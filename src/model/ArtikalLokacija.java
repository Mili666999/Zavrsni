package model;

import java.util.List;

public  class ArtikalLokacija extends Oblik {
	
	private float kolicinaNaLokaciji;
	private Lokacija lokacija;
	
	
	public ArtikalLokacija() {
		
	}
	public ArtikalLokacija(String naziv, float kolicinaUkupna, List<Kategorija> kategorije, float kolicinaNaLokaciji,
			Lokacija lokacija, Oblik oblik) {
		super(naziv);
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
		this.lokacija = lokacija;
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
	

}
