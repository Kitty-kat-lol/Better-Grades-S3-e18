package MyBatisPackage;

import java.util.List;

import MyBatisPackage.dao.CoursDAO;
import MyBatisPackage.dao.UserDAO;
import MyBatisPackage.model.Cours;
import MyBatisPackage.model.User;

/**
 * 
 */

/**
 * @author karthy
 *
 */
public class Manager {
	
	public Manager() {
		CoursDAO coursdao = new CoursDAO();
		Cours gen444 = new Cours();
		gen444.setId("GEN444");
		gen444.setNom("Cours du servlet");
		coursdao.insertCours(gen444);
		System.out.println(coursdao.getCoursById("GEN100").toString());
		
	}

	public static void main(String[] args) {
		
		//CoursDAO coursdao = new CoursDAO();
		Cours gen444 = new Cours();
		gen444.setId("GEN444");
		gen444.setNom("Cours du servlet");
		CoursDAO coursdao = new CoursDAO();
		coursdao.insertCours(gen444);
		System.out.println(coursdao.getCoursById("GEN100").toString());
		
		
	}
	
	public String getCours(String coursID) {
		CoursDAO coursdao = new CoursDAO();
		return coursdao.getCoursById(coursID).toString();
		
	}

}
