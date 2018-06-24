package MyBatisPackage.model;

public class ClassAverage {
	
	private String idCours;
	private String cipEtudiant;
	private float total;
	private float moyenne;
	private String coteIndividuelle;
	private String coteMoyenne;
	
	public void setIdCours(String cours_id) {
		this.idCours = cours_id;
	};
	
	public String getIdCours() {
		return this.idCours;
	}
	
	public void setCip(String cip) {
		this.cipEtudiant = cip;
	}
	
	public String getCip() {
		return this.cipEtudiant;
	}
	
	public void setTotal(Float totalInput) {
		this.total = totalInput;
	};
	
	public Float getTotal() {
		return this.total;
	}
	
	public void setMoyenne(Float avg) {
		this.moyenne = avg;
	}
	
	public Float getMoyenne() {
		return this.moyenne;
	}
	
	public String getCoteIndividuelle() {
		return this.coteIndividuelle;
	}
	
	public void setCoteIndividuelle(String cote) {
		this.coteIndividuelle = cote;
	}
	
	public String getCoteMoyenne() {
		return this.coteMoyenne;
	}
	
	public void setCoteMoyenne(String cote) {
		this.coteMoyenne = cote;
	}
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", Total: " + this.total + 
				", Moyenne: " + this.moyenne + ", Cote Individuelle: " + this.coteIndividuelle + ", Cote du groupe: "
				+ this.coteMoyenne+ "\n";
	}
	
	

}
