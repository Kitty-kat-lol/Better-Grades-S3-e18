package MyBatisPackage.model;

public class SessionAverage {
	
	private String cipEtudiant;
	private String trimestre_id;
	private float total;
	private float moyenne;
	private String coteindividuelle;
	private String cotemoyenne;
	
	
	public String getCip() {
		return this.cipEtudiant;
	}
	
	public String getTrimestre() {
		return this.trimestre_id;
	}
	
	public float getTotal() {
		return this.total;
	}
	
	public float getMoyenne() {
		return this.moyenne;
	}
	
	public String getCoteIndividuelle() {
		return this.coteindividuelle;
	}
	
	public String getCoteMoyenne() {
		return this.cotemoyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", Session: "+ this.trimestre_id + ", Total: " + this.total +
				", Moyenne: " + this.moyenne + ", Cote individuelle: " + this.coteindividuelle+ 
				", Cote moyenne: " + this.cotemoyenne + "\n";
	}
	
	

}
