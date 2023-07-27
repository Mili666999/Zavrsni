package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Oblik;

public class ObradaOblik {
	
	private List<Oblik> oblici;
	
	public ObradaOblik() {
		oblici = new ArrayList<>();
		
	}
	
	public void prikaziIzbornik() {
		System.out.println("-OBLICI-");
		System.out.println("1. Pregled oblika");
		System.out.println("2. Unos novog oblika");
		System.out.println("3. Izmjena postojećeg oblika");
		System.out.println("4. Brisanje postojećeg oblika");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5", 1, 5)) {
		case 1:
			pregledOblika();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeOblika();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	private void pregledOblika() {
		for(Oblik o : oblici) {
			System.out.println(o.getNaziv());
		}
	}
	
	private void dodavanjeOblika() {
		Oblik o = new Oblik();
		o.setId(Pomocno.unosRasponBroja("Unesi šifru oblika", "Pozitivan broj", 1, Integer.MAX_VALUE));
		o.setNaziv(Pomocno.unosString("Unesi naziv oblika", "Naziv obavezan"));
		oblici.add(o);
	}

}
