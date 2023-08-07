package model;

import java.util.List;

public class Artikal extends Entitet {
	
	private String naziv;
	private float kolicinaUkupna;
	private List<Kategorija> kategorije;
	
	
	public Artikal() {
		super();
	}
	public Artikal(String naziv, float kolicinaUkupna, List<Kategorija> kategorije) {
		super();
		this.naziv = naziv;
		this.kolicinaUkupna = kolicinaUkupna;
		this.kategorije = kategorije;
	}



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
	public List<Kategorija> getKategorije() {
		return kategorije;
	}
	public void setKategorije(List<Kategorija> kategorije) {
		this.kategorije = kategorije;
	}
	
	
	
	
	

}
