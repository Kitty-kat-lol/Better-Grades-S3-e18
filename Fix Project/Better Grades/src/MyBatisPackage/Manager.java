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
		
		List<ClassAverage> someAverageT;
		ClassAverage someAverage;
		ClassAverageDAO test = new ClassAverageDAO();
		
		someAverageT = test.getAllClassAverageByCIP("CONT3301");
		System.out.println(someAverageT.toString());
		someAverage = test.getClassAverageByCIPAndCoursId("CONT3301", "GIF232");
		
		System.out.println(someAverage.toString());
		
		someAverageT = test.getAllClassAverageByCIP("LESG2605");
		System.out.println(someAverageT.toString());
		someAverage = test.getClassAverageByCIPAndCoursId("LESG2605", "GEN100");
		
		System.out.println(someAverage.toString());
		
		List<CompetenceAverage> someCompetences;
		CompetenceAverageDAO someTest = new CompetenceAverageDAO();
		
		someCompetences = someTest.getAllCompetenceAverageByCIP("CONT3301", "GEN100");
		System.out.println(someCompetences.toString());
		
		List<ExamAverage> someExams;
		ExamAverageDAO testExams = new ExamAverageDAO();
		
		someExams = testExams.getAllExamAverageByCIPAndClass("CONT3301", "GEN100");
		System.out.println(someExams.toString());
		
		List<SessionAverage> someSession;
		SessionAverageDAO testSession = new SessionAverageDAO();
		
		someSession = testSession.getSessionByCIP("CONT3301");
		System.out.println(someSession.toString());
		someSession = testSession.getSessionByCIP("LESG2605");
		System.out.println(someSession.toString());
		
	}

}
