package java_zavrsni;

import java.util.Scanner;

public class Izbornik {
	
	public Izbornik() {
		Pomocno.ulaz = new Scanner(System.in);
		pozdravnaPoruka();
		prikaziIzbornik();
		Pomocno.ulaz.close();
	}
	
	private void pozdravnaPoruka() {
		System.out.println("*************");
		System.out.println("***SoCoPaN***");
		System.out.println("*************");
	}
	
	private void prikaziIzbornik() {
		System.out.println("-IZBORNIK-");
		System.out.println("1. Artikli");
		System.out.println("2. Kategorije");
		System.out.println("3. Oblici");
		System.out.println("4. Lokacije");
		System.out.println("5. Izlaz");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5",1,5)){
		
		case 1:
			System.out.println("Artikli");
			prikaziIzbornik();
			break;
		case 2:
			System.out.println("Kategorije");
			prikaziIzbornik();
			break;
		case 3:
			System.out.println("Oblici");
			prikaziIzbornik();
			break;
		case 4:
			System.out.println("Lokacije");
			prikaziIzbornik();
			break;
		case 5:
			System.out.println("Doviđenja");
			break;
		}
		
	}

}