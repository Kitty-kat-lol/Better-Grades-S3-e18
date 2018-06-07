
package MyBatisPackage.mapper;

import java.util.List;

import MyBatisPackage.model.Cours;

/**
 * 
 * @author karthy
 *
 */
public interface CoursMapper {

	public void insertCours(Cours cours);

	public Cours getCoursById(String coursId);

	public List<Cours> getAllCourss();

	public void updateCours(Cours cours);

	public void deleteCours(String coursId);

}
