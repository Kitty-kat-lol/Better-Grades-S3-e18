package MyBatisPackage.model;

public class ExamAverage {
	
	private String nomExam;
	private String cipEtudiant;
	private int idCompetence;
	private float note;
	private float moyenne;
	private int idEvaluation;
	private String idCours;
	private int groupe_id;
	private String trimestre_id;
	private int ponderation;
	
	public int getIdGroupe() {
		return this.groupe_id;
	}
	
	public String getIdTrimestre() {
		return this.trimestre_id;
	}
	public int getPonderation() {
		return this.ponderation;
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
		return this.cipEtudiant + ", " + this.idCours + ", Exam: " +this.nomExam + ", Note: " + this.note + 
				", Moyenne: " + this.moyenne + ", Pondération: " + this.ponderation + ", Session: "+this.trimestre_id + "\n";
	}
	
	

}
