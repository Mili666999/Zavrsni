package model;

import java.util.List;

public  class ArtikalLokacija extends Artikal {
	
	private float kolicinaNaLokaciji;
	private Lokacija lokacija;
	private Oblik oblik;
	
	
	public ArtikalLokacija() {
		
	}
	public ArtikalLokacija(String naziv, float kolicinaUkupna, List<Kategorija> kategorije, float kolicinaNaLokaciji,
			Lokacija lokacija, Oblik oblik) {
		super(naziv, kolicinaUkupna, kategorije);
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
		this.lokacija = lokacija;
		this.oblik = oblik;
	}


	public float getKolicinaNaLokaciji() {
		return kolicinaNaLokaciji;
	}
	public void setKolicinaNaLokaciji(float kolicinaNaLokaciji) {
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
	}
	public Lokacija getLokacija() {
		return lokacija;
	}
	public void setLokacija(Lokacija lokacija) {
		this.lokacija = lokacija;
	}
	public Oblik getOblik() {
		return oblik;
	}
	public void setOblik(Oblik oblik) {
		this.oblik = oblik;
	}
	
	

}
