package model;

public class Artikal extends Kategorija {
	
	private String naziv;
	private float kolicina;
	
	
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public float getKolicina() {
		return kolicina;
	}
	public void setKolicina(float kolicina) {
		this.kolicina = kolicina;
	}

}
