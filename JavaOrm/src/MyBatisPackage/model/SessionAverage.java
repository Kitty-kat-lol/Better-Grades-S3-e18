package MyBatisPackage.model;

public class SessionAverage {
	
	private String cipEtudiant;
	private String coteSession;
	private String coteSessionMoyenne;
	
		
	public void setCip(String cip) {
		this.cipEtudiant = cip;
	}
	
	public String getCip() {
		return this.cipEtudiant;
	}
	
	public void setCoteSession(String cote) {
		this.coteSession = cote;
	}
	
	public String getCoteSession() {
		return this.coteSession;
	}
	
	public void setCoteSessionMoyenne(String cote) {
		this.coteSessionMoyenne = cote;
	}
	
	public String getCoteSessionMoyenne() {
		return this.coteSessionMoyenne;
	}
	
	public String toString() {
		return this.cipEtudiant + ", Cote de la session: " + this.coteSession + ", Cote Moyenne: " + this.coteSessionMoyenne + "\n";
	}
	
	

}
