package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Artikal;
import model.Kategorija;

public class ObradaArtikal {
	
	private List<Artikal> artikli;
	private Izbornik izbornik;
	
	public ObradaArtikal() {
		artikli = new ArrayList<>();
		
	}
	
	public void prikaziIzbornik() {
		System.out.println("---ARTIKLI---");
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
		System.out.println("-POPIS ARTIKALA-");
		int b=1;
		for(Artikal a : artikli) {
			System.out.println(b++ + ". " + a);
		}
		System.out.println("*****************");
	}

	private void dodavanjeArtikla() {
		Artikal a = new Artikal();
		a.setId(Pomocno.unosRasponBroja("Unesi šifru artikla: ", "Pozitivan broj", 1, Integer.MAX_VALUE));
		a.setNaziv(Pomocno.unosString("Unesi naziv artikla: ", "Naziv obavezan!"));
		a.setKolicinaUkupna(Pomocno.unosFloat("Unesi ukupnu količinu (. za decimalni dio): ", "Greška kod unosa!"));
		a.setKategorija(postaviKategoriju());
		artikli.add(a);
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
		a.setId(Pomocno.unosRasponBroja("Unesi šifru artikla: (" + a.getId() + "): ", "Nije dobar odabir!", 1, artikli.size()));
		a.setNaziv(Pomocno.unosString("Unesi naziv artikla (" + a.getNaziv() + "): ", "Naziv obavezan!"));
		a.setKolicinaUkupna(Pomocno.unosFloat("Unesi ukupnu količinu (. za decimalni dio): (" + a.getKolicinaUkupna() + "): ", "Greška kod unosa!"));
		//System.out.println("Trenutna kategorija: " +  );
		a.setKategorija(postaviKategoriju());
	}
	
	private void brisanjeArtikla() {
		pregledArtikala();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj artikla: ", "Nije dobar odabir!", 1, artikli.size());
		artikli.remove(index-1);
	}

}
