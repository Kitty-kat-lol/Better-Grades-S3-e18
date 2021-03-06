package MyBatisPackage.model;

public class ExamAverage {
	
	private String nomExam;
	private String cipEtudiant;
	private int idCompetence;
	private float note;
	private float moyenne;
	private int idEvaluation;
	private String idCours;
	private String nomCompetence;
	private int ponderation;
	
	public int getPonderation() {
		return this.ponderation;
	}
	
	public String getNomCompetence() {
		return this.nomCompetence;
	}
	
	public String getNomExam() {
		return this.nomExam;
	}
	
	public int getIdEvaluation() {
		return this.idEvaluation;
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
	
	public Float getNote() {
		return this.note;
	}
	
	public Float getMoyenne() {
		return this.moyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", Exam: " +this.nomExam + ", "+ this.nomCompetence + ", Note: " + this.note + 
				", Moyenne: " + this.moyenne + ", Pondération: " + this.ponderation+ "\n";
	}
	
	

}
