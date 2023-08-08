package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Lokacija;

public class ObradaLokacija {
	
	private List<Lokacija> lokacije;
	
	public List<Lokacija> getLokacije() {
		return lokacije;
	}

	public ObradaLokacija() {
		lokacije = new ArrayList<>();
	}
	
	public void prikaziIzbornik() {
		System.out.println("---LOKACIJE---");
		System.out.println("1. Pregled lokacija");
		System.out.println("2. Unos nove lokacije");
		System.out.println("3. Izmjena postojeće lokacije");
		System.out.println("4. Brisanje postojeće lokacije");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornka: ", "Obavezno 1-5!", 1, 5)) {
		case 1:
			pregledLokacija();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeLokacije();
			prikaziIzbornik();
			break;
		case 3:
			promjenaLokacije();
			prikaziIzbornik();
			break;
		case 4:
			brisanjeLokacije();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	public void pregledLokacija() {
		System.out.println("-POPIS LOKACIJA-");
		int b=1;
		for(Lokacija l : lokacije) {
			System.out.println(b++ + ". " + l);
		}
		System.out.println("****************");
	}
	
	public void dodavanjeLokacije() {
		Lokacija l = new Lokacija();
		l.setId(Pomocno.unosRasponBroja("Unesi šifru lokacije: ", "Pozitivan broj!", 1, Integer.MAX_VALUE));
		l.setNaziv(Pomocno.unosString("Unesi naziv lokacije: ", "Naziv obavezan!"));
		lokacije.add(l);
	}
	
	private void promjenaLokacije() {
		pregledLokacija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj lokacije: ", "NIje dobar odabir!", 1, lokacije.size());
		Lokacija l = lokacije.get(index-1);
		l.setId(Pomocno.unosRasponBroja("Unesi šifru lokacije (" + l.getId() + "): ", "Nije dobar odabir!", 1, lokacije.size()));
		l.setNaziv(Pomocno.unosString("Unesi naziv lokacije (" + l.getNaziv() + "): ", "Nije dobar odabir!"));
	}
	
	private void brisanjeLokacije() {
		pregledLokacija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj lokacije: ", "NIje dobar odabir!", 1, lokacije.size());
		lokacije.remove(index-1);
	}

}
