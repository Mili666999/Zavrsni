package model;

public class Lokacija extends Entitet {
	
	private String naziv;

	
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
