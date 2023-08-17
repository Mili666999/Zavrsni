package model;

import java.util.List;

public class AOL extends Entitet {
	
	private float kolicinaNaLokaciji;
	private List<Oblik> oblici;
	private List<Lokacija> lokacije;
	
	public AOL() {
		
	}
	
	public AOL(float kolicinaNaLokaciji, List<Oblik> oblici, List<Lokacija> lokacije) {
		super();
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
		this.oblici = oblici;
		this.lokacije = lokacije;
	}


	public float getKolicinaNaLokaciji() {
		return kolicinaNaLokaciji;
	}
	public void setKolicinaNaLokaciji(float kolicinaNaLokaciji) {
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
	}
	public List<Oblik> getOblici() {
		return oblici;
	}
	public void setOblici(List<Oblik> oblici) {
		this.oblici = oblici;
	}
	public List<Lokacija> getLokacije() {
		return lokacije;
	}
	public void setLokacije(List<Lokacija> lokacije) {
		this.lokacije = lokacije;
	}
	
}
