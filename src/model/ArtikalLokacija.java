package model;

public abstract class ArtikalLokacija {
	
	private float kolicina;
	private Lokacija lokacija;

	
	public float getKolicina() {
		return kolicina;
	}
	public void setKolicina(float kolicina) {
		this.kolicina = kolicina;
	}
	public Lokacija getLokacija() {
		return lokacija;
	}
	public void setLokacija(Lokacija lokacija) {
		this.lokacija = lokacija;
	}
	
	

}
