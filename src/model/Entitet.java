package model;

public abstract class Entitet {
	
	private int id;
	
	
	public Entitet() {
		
	}

	public Entitet(int id) {
		super();
		this.id = id;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	

}
