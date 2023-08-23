package model;

import java.util.List;

public class Artikal extends Entitet  {
	
	private String naziv;
	private float kolicinaUkupna;
	private List<Kategorija> kategorije;
	private List<AOL> aol;
	
	public Artikal() {
		
	}

	public Artikal(int id, String naziv, float kolicinaUkupna, List<Kategorija> kategorije, List<AOL> aol) {
		super(id);
		this.naziv = naziv;
		this.kolicinaUkupna = kolicinaUkupna;
		this.kategorije = kategorije;
		this.aol = aol;
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
	
	public List<AOL> getAol() {
		return aol;
	}
	
	public void setAol(List<AOL> aol) {
		this.aol = aol;
	}

}
