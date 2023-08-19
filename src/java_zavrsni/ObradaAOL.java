package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.AOL;
import model.Artikal;
import model.Lokacija;
import model.Oblik;

public class ObradaAOL {
	
	private Izbornik izbornik;
	private List<AOL> aoli;
	private List<Artikal> artikli;
	
	
	public ObradaAOL() {
		aoli = new ArrayList<>();
		artikli = new ArrayList<>();
		
	}
	
	public ObradaAOL(Izbornik izbornik) {
		this();
		this.izbornik = izbornik;
	}
	
	

	public void dodavanjeAOL() {
		AOL a = new AOL();
		a.setId(artikli.size()-1);
		System.out.println("Unesi lokaciju lijeka...");
		izbornik.getObradaLokacija().pregledLokacija();
		a.setLokacije(ucitavanjeLokacija());
		a.setKolicinaNaLokaciji(Pomocno.unosFloat("Unesi količinu na lokaciji (. za decimalni dio): ", "Greška kod unosa!"));
		System.out.println("Unesi oblik lijeka...");
		izbornik.getObradaOblik().pregledOblika();
		a.setOblici(ucitavanjeOblika());
		aoli.add(a);
	}


	private List<Oblik> ucitavanjeOblika() {
		List<Oblik> oblici = new ArrayList<>();
		if(Pomocno.unosRasponBroja("Koristiti postojeći - 1, Dodati novi - 2: ", "NIje dobar odabir!", 1, 2)==1) {
			oblici.add(postaviOblik());
		}
		else {
			izbornik.getObradaOblik().dodavanjeOblika();
			oblici.add(postaviOblik());
		}
		return oblici;
	}

	private Oblik postaviOblik() {
		izbornik.getObradaOblik().pregledOblika();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj oblika: ", "NIje dobar odabir!", 1, izbornik.getObradaOblik().getOblici().size());
		return izbornik.getObradaOblik().getOblici().get(index-1);
	}
	
	
	private List<Lokacija> ucitavanjeLokacija() {
		List<Lokacija> lokacije = new ArrayList<>();
		if(Pomocno.unosRasponBroja("Koristi postojeću - 1, Dodati novu - 2: ", "NIje dobar odabir!", 1, 2)==1) {
			lokacije.add(postaviLokaciju());
		}
		else {
			izbornik.getObradaLokacija().dodavanjeLokacije();
			lokacije.add(postaviLokaciju());
		}
		return lokacije;
	}

	private Lokacija postaviLokaciju() {
		izbornik.getObradaLokacija().pregledLokacija();
		int index = Pomocno.unosRasponBroja("Odaberi redni broj lokacije: ", "NIje dobar odabir!", 1, izbornik.getObradaLokacija().getLokacije().size());
		return izbornik.getObradaLokacija().getLokacije().get(index-1);
	}

}
