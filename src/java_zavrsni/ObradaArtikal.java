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
		System.out.println("-ARTIKLI-");
		System.out.println("1. Pregled artikala");
		System.out.println("2. Unos novog artikla");
		System.out.println("3. Izmjena postojećeg artikla");
		System.out.println("4. Brisanje postojećeg artikla");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
		
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5", 1, 5)) {
		case 1:
			pregledArtikala();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeArtikla();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	private void pregledArtikala() {
		for(Artikal a : artikli) {
			System.out.println(a.getNaziv());
		}
	}

	private void dodavanjeArtikla() {
		Artikal a = new Artikal();
		a.setId(Pomocno.unosRasponBroja("Unesi šifru artikla: ", "Pozitivan broj", 1, Integer.MAX_VALUE));
		a.setNaziv(Pomocno.unosString("Unesi naziv artikla: ", "Naziv obavezan"));
		a.setKolicinaUkupna(Pomocno.unosFloat("Unesi ukupnu količinu (. za decimalni dio): ", "Greška kod unosa"));
		a.setKategorija(postaviKategoriju());
		artikli.add(a);
	}

	private Kategorija postaviKategoriju() {
		izbornik.getObradaKategorija().pregledKategorija();
	}

}
