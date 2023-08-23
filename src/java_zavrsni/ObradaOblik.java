package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.Oblik;

public class ObradaOblik {
	
	private int id = Pomocno.DEV ? 4 : 1;
	private List<Oblik> oblici;
	
	public List<Oblik> getOblici() {
		return oblici;
	}

	public ObradaOblik() {
		oblici = new ArrayList<>();
		if(Pomocno.DEV) {
			testisi();
		}
	}
	
	private void testisi() {
		oblici.add(new Oblik(1,"Tablete"));
		oblici.add(new Oblik(2,"Sirup"));
		oblici.add(new Oblik(3,"Sprej"));
	}

	public void prikaziIzbornik() {
		System.out.println("\n---OBLICI---");
		System.out.println("1. Pregled oblika");
		System.out.println("2. Unos novog oblika");
		System.out.println("3. Izmjena postojećeg oblika");
		System.out.println("4. Brisanje postojećeg oblika");
		System.out.println("5. Povratak na -GLAVNI IZBORNIK-");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5!", 1, 5)) {
		case 1:
			pregledOblika();
			prikaziIzbornik();
			break;
		case 2:
			dodavanjeOblika();
			prikaziIzbornik();
			break;
		case 3:
			promjenaOblika();
			prikaziIzbornik();
			break;
		case 4:
			brisanjeOblika();
			prikaziIzbornik();
			break;
		case 5:
			break;
		}
	}

	public void pregledOblika() {
		System.out.println("\n-POPIS OBLIKA-");
		int b=1;
		for(Oblik o : oblici) {
			System.out.println(b++ + ". " + o);
		}
		System.out.println("***************");
	}
	
	public void dodavanjeOblika() {
		Oblik o = new Oblik();
		o.setId(id++);
		o.setNaziv(Pomocno.unosString("Unesi naziv oblika: ", "Naziv obavezan!"));
		oblici.add(o);
	}

	private void promjenaOblika() {
		pregledOblika();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj oblika: ", "Nije dobar odabir!", 1, oblici.size());
		Oblik o = oblici.get(index-1);
		o.setId(oblici.get(index-1).getId());
		o.setNaziv(Pomocno.unosString("Unesi naziv oblika (" + o.getNaziv() + "): ","Nije dobar odabir!" ));
		
	}

	private void brisanjeOblika() {
		pregledOblika();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj oblika: ", "Nije dobar odabir!", 1, oblici.size());
		oblici.remove(index-1);
	}

}
