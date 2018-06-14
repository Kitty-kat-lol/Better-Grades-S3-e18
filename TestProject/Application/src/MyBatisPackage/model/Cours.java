package MyBatisPackage.model;

public class Cours {
	
	private String idCours;
	private String nomCours;
	
	public String getId() {
		return this.idCours;
	}
	
	public String getNom() {
		return this.nomCours;
	}
	
	public void setId(String id) {
		this.idCours = id;
	}
	
	public void setNom(String nom) {
		this.nomCours = nom;
	}
	
	public String toString() {
		return this.idCours + ", " + this.nomCours;
	}

}
