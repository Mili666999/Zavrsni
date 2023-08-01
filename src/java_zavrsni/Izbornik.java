package java_zavrsni;

import java.util.Scanner;

public class Izbornik {
	
	private ObradaLokacija obradaLokacija;
	private ObradaOblik obradaOblik;
	private ObradaKategorija obradaKategorija;
	private ObradaArtikal obradaArtikal;
	
	public Izbornik() {
		obradaLokacija = new ObradaLokacija();
		obradaOblik = new ObradaOblik();
		obradaKategorija = new ObradaKategorija();
		obradaArtikal = new ObradaArtikal();
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
		System.out.println("-GLAVNI IZBORNIK-");
		System.out.println("1. Artikli");
		System.out.println("2. Kategorije");
		System.out.println("3. Oblici");
		System.out.println("4. Lokacije");
		System.out.println("5. IZLAZ");
		ucitajStavkuIzbornika();
	}

	private void ucitajStavkuIzbornika() {
		
		switch(Pomocno.unosRasponBroja("Odaberi stavku izbornika: ", "Obavezno 1-5",1,5)){
		
		case 1:
			obradaArtikal.prikaziIzbornik();
			prikaziIzbornik();
			break;
		case 2:
			obradaKategorija.prikaziIzbornik();
			prikaziIzbornik();
			break;
		case 3:
			obradaOblik.prikaziIzbornik();
			prikaziIzbornik();
			break;
		case 4:
			obradaLokacija.prikaziIzbornik();
			prikaziIzbornik();
			break;
		case 5:
			System.out.println("Doviđenja");
			break;
		}
		
	}

	public ObradaKategorija getObradaKategorija() {
		return obradaKategorija;
	}
	public ObradaLokacija getObradaLokacija() {
		return obradaLokacija;
	}
	public ObradaOblik getObradaOblik() {
		return obradaOblik;
	}
	public ObradaArtikal getObradaArtikal() {
		return obradaArtikal;
	}
	
}
