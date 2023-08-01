package model;

public class Artikal extends Oblik {
	
	private String naziv;
	private float kolicinaUkupna;
	private Kategorija kategorija;
	
	
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public float getKolicinaUkupna() {
		return kolicinaUkupna;
	}
	public void setKolicinaUkupna(float kolicinaUkupna) {
		this.kolicinaUkupna = kolicinaUkupna;
	}
	public Kategorija getKategorija() {
		return kategorija;
	}
	public void setKategorija(Kategorija kategorija) {
		this.kategorija = kategorija;
	}
	
	

}
