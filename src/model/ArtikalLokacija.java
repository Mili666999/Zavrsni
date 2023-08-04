package model;

public  class ArtikalLokacija extends Artikal {
	
	private float kolicinaNaLokaciji;
	private Lokacija lokacija;
	
	
	public ArtikalLokacija() {
		
	}
	public ArtikalLokacija(String naziv, float kolicinaUkupna, Kategorija kategorija, float kolicinaNaLokaciji,
			Lokacija lokacija) {
		super(naziv, kolicinaUkupna, kategorija);
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
