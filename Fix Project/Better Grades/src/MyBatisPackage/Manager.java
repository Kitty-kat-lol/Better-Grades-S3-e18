package MyBatisPackage;

import java.util.List;

import MyBatisPackage.dao.ClassAverageDAO;
import MyBatisPackage.dao.CompetenceAverageDAO;
import MyBatisPackage.dao.CoursDAO;
import MyBatisPackage.dao.ExamAverageDAO;
import MyBatisPackage.dao.SessionAverageDAO;
import MyBatisPackage.dao.UserDAO;
import MyBatisPackage.model.ClassAverage;
import MyBatisPackage.model.CompetenceAverage;
import MyBatisPackage.model.Cours;
import MyBatisPackage.model.ExamAverage;
import MyBatisPackage.model.SessionAverage;
import MyBatisPackage.model.User;

/**
 * 
 */

/**
 * @author karthy
 *
 */
public class Manager {

	public static void main(String[] args) {
		
		ClassAverage someAverage;
		ClassAverageDAO test = new ClassAverageDAO();
		someAverage = test.getClassAverageByCIPAndCoursId("CONT3301", "GEN220", 1, "H18");
		
		System.out.println(someAverage.toString());
		someAverage = test.getClassAverageByCIPAndCoursId("CONT3301", "GEN220", 25, "H18");
		System.out.println(someAverage.toString());

		
		List<CompetenceAverage> someCompetences;
		CompetenceAverageDAO someTest = new CompetenceAverageDAO();
		
		someCompetences = someTest.getAllCompetenceAverageByCIP("CONT3301", "GEI785", 1, "H18");
		System.out.println(someCompetences.toString());
		
		List<ExamAverage> someExams;
		ExamAverageDAO testExams = new ExamAverageDAO();
		
		someExams = testExams.getAllExamAverageByCIPAndClass("CONT3301", "GEI769", 1, "H18");
		System.out.println(someExams.toString());
		
		List<SessionAverage> someSessions;
		SessionAverageDAO sessionTest = new SessionAverageDAO();
		someSessions = sessionTest.getAllSessionByCIP("CONT3301");
		System.out.println(someSessions);
	}

}
