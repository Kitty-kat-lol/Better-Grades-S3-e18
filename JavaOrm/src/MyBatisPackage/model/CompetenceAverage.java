package MyBatisPackage.model;

public class CompetenceAverage {
	
	private String idCours;
	private String cipEtudiant;
	private int idCompetence;
	private float total;
	private float moyenne;
	private String nomCompetence;
	
	public String getNomCompetence() {
		return this.nomCompetence;
	}
	
	public String getIdCours() {
		return this.idCours;
	}
	
	public String getCip() {
		return this.cipEtudiant;
	}
	
	public int getCompetence() {
		return this.idCompetence;
	}
	
	public Float getTotal() {
		return this.total;
	}
	
	public Float getMoyenne() {
		return this.moyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", " + this.nomCompetence + ", Total: " + this.total + 
				", Moyenne: " + this.moyenne+ "\n";
	}
	
	

}
