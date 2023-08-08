package java_zavrsni;

import java.util.ArrayList;
import java.util.List;

import model.AOL;
import model.Lokacija;
import model.Oblik;

public class ObradaAOL {
	
	private List<AOL> aoli;
	private Izbornik izbornik;
	
	public ObradaAOL() {
		aoli = new ArrayList<>();
	}
	
	public ObradaAOL(Izbornik izbornik) {
		this();
		this.izbornik = izbornik;
	}
	
	private void dodavanjeAOL() {
		AOL a = new AOL();
		a.setId(Pomocno.unosRasponBroja("Unesi šifru: ", "Pozitivan broj!", 1, Integer.MAX_VALUE));
		a.setKolicinaNaLokaciji(Pomocno.unosFloat("Unesi količinu na lokaciji (. za decimalni dio): ", "Greška kod unosa!"));
		izbornik.getObradaOblik().pregledOblika();
		a.setOblici(ucitavanjeOblika());
		izbornik.getObradaLokacija().pregledLokacija();
		a.setLokacije(ucitavanjeLokacija());
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
