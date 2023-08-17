package model;

public class Kategorija extends Entitet {
	
	private String naziv;
	
	
	public Kategorija() {
		
	}
	
	public Kategorija(String naziv) {
		super();
		this.naziv = naziv;
	}


	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	@Override
	public String toString() {
		return naziv;
	}

}
