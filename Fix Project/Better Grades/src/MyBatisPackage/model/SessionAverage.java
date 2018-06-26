package MyBatisPackage.model;

public class SessionAverage {
	
	private String cipEtudiant;
	private String coteSession;
	
	
	public String getCip() {
		return this.cipEtudiant;
	}
	
	public String getCoteSession() {
		return this.coteSession;
	}
	
	public String toString() {
		return this.cipEtudiant + ", Cote de la session: " + this.coteSession+ "\n";
	}
	
	

}
