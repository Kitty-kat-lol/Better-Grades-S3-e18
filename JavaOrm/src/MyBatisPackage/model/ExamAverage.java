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
	
	public void setNomCompetence(String nom ) {
		this.nomCompetence = nom;
	}
	
	public String getNomCompetence() {
		return this.nomCompetence;
	}
	
	public void setNomExam(String nom) {
		this.nomExam = nom;
	}
	
	public String getNomExam() {
		return this.nomExam;
	}
	
	public void setIdEvaluation(int eval) {
		this.idEvaluation = eval;
	}
	
	public int getIdEvaluation() {
		return this.idEvaluation;
	}
	
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
	
	public void setNote(Float noteInput) {
		this.note = noteInput;
	};
	
	public Float getNote() {
		return this.note;
	}
	
	public void setMoyenne(Float avg) {
		this.moyenne = avg;
	}
	
	public Float getMoyenne() {
		return this.moyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", Exam: " +this.nomExam + ", "+ this.nomCompetence + ", Note: " + this.note + 
				", Moyenne: " + this.moyenne + ", Pondération: " + this.ponderation + "\n";
	}
	
	

}
