package MyBatisPackage;

import java.util.List;

import MyBatisPackage.dao.ClassAverageDAO;
import MyBatisPackage.dao.CoursDAO;
import MyBatisPackage.dao.UserDAO;
import MyBatisPackage.model.ClassAverage;
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

	public static void main(String[] args) {
		
		List<ClassAverage> someAverage;
		ClassAverageDAO test = new ClassAverageDAO();
		
		someAverage = test.getAllClassAverageByCIP("CONT3301");
		
		System.out.println(someAverage.toString());
		
		someAverage = test.getAllClassAverageByCIP("LESG2605");
		
		System.out.println(someAverage.toString());
		
	}

}
