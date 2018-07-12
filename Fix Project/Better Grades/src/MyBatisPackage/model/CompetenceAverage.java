package MyBatisPackage.model;

public class CompetenceAverage {
	
	private String idCours;
	private int groupe_id;
	private String trimestre_id;
	private String cipEtudiant;
	private int idCompetence;
	private float total;
	private float moyenne;
	
	public int getIdGroupe() {
		return this.groupe_id;
	}
	
	public String getIdTrimestre() {
		return this.trimestre_id;
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
		return this.cipEtudiant + ", " + this.idCours + ", Total: " + this.total + 
				", Moyenne: " + this.moyenne+ "\n";
	}
	
	

}
