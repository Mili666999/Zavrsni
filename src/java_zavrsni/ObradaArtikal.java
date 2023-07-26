package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Artikal;

public class ObradaArtikal {
	
	private List<Artikal> artikli;
	
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
		
		
		
	}

}
