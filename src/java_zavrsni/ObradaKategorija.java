package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Kategorija;

public class ObradaKategorija {
	
	private List<Kategorija> kategorije;
	
	public List<Kategorija> getKategorije(){
		return kategorije;
	}
	
	public ObradaKategorija() {
		kategorije = new ArrayList<>();
		
	}
	
	public void prikaziIzbornik() {
		System.out.println("---KATEGORIJE---");
		System.out.println("1. Pregled kategorija");
		System.out.println("2. Unos nove kategorije");
		System.out.println("3. Izmjena postojeće kategorije");
		System.out.println("4. Brisanje postojeće kategorije");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5", 1, 5)) {
		case 1:
			pregledKategorija();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeKategorije();
			prikaziIzbornik();
			break;
		case 3:
			promjenaKategorije();
			prikaziIzbornik();
			break;
		case 4:
			brisanjeKategorije();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}
	

	public void pregledKategorija() {
		System.out.println("-POPIS KATEGORIJA-");
		int b=1;
		for(Kategorija k : kategorije) {
			System.out.println(b++ + ". " + k);
		}
		System.out.println("******************");
	}

	private void dodavanjeKategorije() {
		Kategorija k = new Kategorija();
		k.setId(Pomocno.unosRasponBroja("Unesi šifru kategorije: ", "Pozitivan broj", 1, Integer.MAX_VALUE));
		k.setNaziv(Pomocno.unosString("Unesi naziv kategorije: ","Naziv obavezan"));
		kategorije.add(k);
	}

	private void promjenaKategorije() {
		pregledKategorija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj kategorije: ", "Nije dobar odabir!", 1, kategorije.size());
		Kategorija k = kategorije.get(index-1);
		k.setId(Pomocno.unosRasponBroja("Unesi šifru kategorije (" + k.getId() + "): ", "Pozitivan broj!", 1, Integer.MAX_VALUE));
		k.setNaziv(Pomocno.unosString("Unesi naziv kategorije (" + k.getNaziv() + "): ", "Naziv obavezan!"));
	}
	
	private void brisanjeKategorije() {
		pregledKategorija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj kategorije: ", "Nije dobar odabir!", 1, kategorije.size());
		kategorije.remove(index-1);
	}

}
