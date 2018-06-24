package MyBatisPackage.model;

public class CompetenceAverage {
	
	private String idCours;
	private String cipEtudiant;
	private int idCompetence;
	private float total;
	private float moyenne;
	
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
	
	public void setCompetence(int comp) {
		this.idCompetence = comp;
	}
	
	public int getCompetence() {
		return this.idCompetence;
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
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", Competence: " + this.idCompetence + ", Total: " + this.total + 
				", Moyenne: " + this.moyenne + "\n";
	}
	
	

}
