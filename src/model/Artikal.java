package model;

public class Artikal extends Oblik {
	
	private String naziv;
	private float kolicina;
	private Kategorija kategorija;
	
	
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
	public Kategorija getKategorija() {
		return kategorija;
	}
	public void setKategorija(Kategorija kategorija) {
		this.kategorija = kategorija;
	}
	
	

}
