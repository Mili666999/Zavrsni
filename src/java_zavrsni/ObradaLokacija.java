package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Lokacija;

public class ObradaLokacija {
	
	private List<Lokacija> lokacije;
	
	public ObradaLokacija() {
		lokacije = new ArrayList<>();
		
	}
	
	public void prikaziIzbornik() {
		System.out.println("-LOKACIJE-");
		System.out.println("1. Pregled lokacija");
		System.out.println("2. Unos nove lokacije");
		System.out.println("3. Izmjena postojeće lokacije");
		System.out.println("4. Brisanje postojeće lokacije");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornka", "Obavezno 1-5", 1, 5)) {
		case 1:
			pregledLokacija();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeLokacije();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	private void pregledLokacija() {
		for(Lokacija l : lokacije) {
			System.out.println(l.getNaziv());
		}
	}
	
	private void dodavanjeLokacije() {
		Lokacija l = new Lokacija();
		l.setId(Pomocno.unosRasponBroja("Unesi šifru lokacije", "Pozitivan broj", 1, Integer.MAX_VALUE));
		l.setNaziv(Pomocno.unosString("Unesi naziv lokacije", "Naziv obavezan"));
		lokacije.add(l);
	}

}
