package model;

public  class ArtikalLokacija extends Artikal {
	
	private float kolicinaNaLokaciji;
	private Lokacija lokacija;

	
	
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
