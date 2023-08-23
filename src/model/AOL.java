package model;


public class AOL extends Entitet {
	
	private float kolicinaNaLokaciji;
	private Oblik oblici;
	private Lokacija lokacije;
	
	public AOL() {
		
	}

	public float getKolicinaNaLokaciji() {
		return kolicinaNaLokaciji;
	}

	
	public void setKolicinaNaLokaciji(float kolicinaNaLokaciji) {
		this.kolicinaNaLokaciji = kolicinaNaLokaciji;
	}

	public Oblik getOblici() {
		return oblici;
	}

	public void setOblici(Oblik oblici) {
		this.oblici = oblici;
	}

	public Lokacija getLokacije() {
		return lokacije;
	}

	public void setLokacije(Lokacija lokacije) {
		this.lokacije = lokacije;
	}
	
}
