package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.AOL;
import model.Artikal;
import model.Kategorija;


public class ObradaArtikal {
	
	private int id = 1;
	private List<Artikal> artikli;
	private List<AOL> aoli;
	private Izbornik izbornik;
	
	public List<AOL> getAoli() {
		return aoli;
	}

	public ObradaArtikal() {
		artikli = new ArrayList<>();
		aoli = new ArrayList<>();
	}

	public ObradaArtikal(Izbornik izbornik) {
		this();
		this.izbornik = izbornik;
	}

	public void prikaziIzbornik() {
		System.out.println("\n---ARTIKLI---");
		System.out.println("1. Pregled artikala");
		System.out.println("2. Unos novog artikla");
		System.out.println("3. Izmjena postojećeg artikla");
		System.out.println("4. Brisanje postojećeg artikla");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
		
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5!", 1, 5)) {
		case 1:
			pregledArtikala();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeArtikla();
			prikaziIzbornik();
			break;
		case 3:
			promjenaArtikla();
			prikaziIzbornik();
			break;
		case 4:
			brisanjeArtikla();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	private void pregledArtikala() {
		System.out.println("\n-POPIS ARTIKALA-");
		int b=1;
		for(Artikal a : artikli) {
			System.out.println(b++ + ". " + a.getNaziv() + "/" + a.getKolicinaUkupna() + "/" + a.getKategorije().toString().replace("[","" ).replace("]", "") + "/");
		}
		System.out.println("*****************");
	}

	private void dodavanjeArtikla() {
		Artikal a = new Artikal();
		a.setId(id++);
		a.setNaziv(Pomocno.unosString("Unesi naziv artikla: ", "Naziv obavezan!"));
		a.setKolicinaUkupna(Pomocno.unosFloat("Unesi ukupnu količinu (. za decimalni dio): ", "Greška kod unosa!"));
		System.out.println("Unesi kategoriju...");
		izbornik.getObradaKategorija().pregledKategorija();
		a.setKategorije(ucitavanjeKategorije());
		if(a.getKategorije().toString().toLowerCase().replace("[","" ).replace("]", "").equals("lijekovi")) {
			
			List<AOL> aols = new ArrayList<>();
			aols.add(izbornik.getObradaAOL().dodavanjeAOL());
			
			a.setAol(aols);
			if(Pomocno.unosRasponBroja("\nŽelite li dodati artikal na još koju lokaciju? (1-DA, 2-NE): ", "Nije dobar odabir!", 1, 2)==1) {
				aols.add(izbornik.getObradaAOL().dodavanjeAOL());
			}
		}
		artikli.add(a);
	}
	

	private List<Kategorija> ucitavanjeKategorije() {
		List<Kategorija> kategorije = new ArrayList<>();
		if(Pomocno.unosRasponBroja("Koristiti postojeću - 1, Dodati novu - 2: ", "Nije dobar odabir!", 1, 2)==1) {
			kategorije.add(postaviKategoriju());
		}
		else{
			izbornik.getObradaKategorija().dodavanjeKategorije();
			kategorije.add(postaviKategoriju());
		}
		return kategorije;
	}

	private Kategorija postaviKategoriju() {
		izbornik.getObradaKategorija().pregledKategorija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj kategorije: ", "Nije dobar odabir!", 1, izbornik.getObradaKategorija().getKategorije().size());
		return izbornik.getObradaKategorija().getKategorije().get(index-1);
	}
	
	private void promjenaArtikla() {
		pregledArtikala();
		int index = Pomocno.unosRasponBroja("Unesi redni broj artikla: ", "Nije dobar odabir", 1, artikli.size());
		Artikal a = artikli.get(index-1);
		a.setId(artikli.get(index-1).getId());
		a.setNaziv(Pomocno.unosString("Unesi naziv artikla (" + a.getNaziv() + "): ", "Naziv obavezan!"));
		a.setKolicinaUkupna(Pomocno.unosFloat("Unesi ukupnu količinu (. za decimalni dio): (" + a.getKolicinaUkupna() + "): ", "Greška kod unosa!"));
		System.out.println("Unesi kategoriju...");
		System.out.println("Trenutna kategorija: " + a.getKategorije().toString().replace("[","" ).replace("]", ""));
		izbornik.getObradaKategorija().pregledKategorija();
		a.setKategorije(ucitavanjeKategorije());
		if(a.getKategorije().toString().toLowerCase().replace("[","" ).replace("]", "").equals("lijekovi")) {
			izbornik.getObradaAOL().dodavanjeAOL();
		}
	}
	
	private void brisanjeArtikla() {
		pregledArtikala();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj artikla: ", "Nije dobar odabir!", 1, artikli.size());
		artikli.remove(index-1);
	}

}
