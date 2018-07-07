package MyBatisPackage.model;

public class ClassAverage {
	
	private String idCours;
	private int groupe_id;
	private String trimestre_id;
	private String cipEtudiant;
	private float total;
	private float moyenne;
	private String coteIndividuelle;
	private String coteMoyenne;
	
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
	
	public Float getTotal() {
		return this.total;
	}
	
	public Float getMoyenne() {
		return this.moyenne;
	}
	
	public String getCoteIndividuelle() {
		return this.coteIndividuelle;
	}
	
	public String getCoteMoyenne() {
		return this.coteMoyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", " + this.idCours + ", Total: " + this.total + 
				", Moyenne: " + this.moyenne + ", Cote Individuelle: " + this.coteIndividuelle + ", Cote du groupe: "
				+ this.coteMoyenne + "\n";
	}
	
	

}
