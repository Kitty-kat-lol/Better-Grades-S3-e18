package MyBatisPackage.dao;

import java.util.List;
import MyBatisPackage.mapper.CoursMapper;
import MyBatisPackage.model.Cours;
import MyBatisPackage.util.MyBatisDAOUtil;

import org.apache.ibatis.session.SqlSession;

/**
 * @author karthy
 *
 */
public class CoursDAO {

	public void insertCours(Cours cours) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			CoursMapper coursMapper = sqlSession.getMapper(CoursMapper.class);
			coursMapper.insertCours(cours);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
	}

	public Cours getCoursById(String coursId) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			CoursMapper coursMapper = sqlSession.getMapper(CoursMapper.class);
			return coursMapper.getCoursById(coursId);
		} finally {
			sqlSession.close();
		}
	}

	public List<Cours> getAllCourss() {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		List<Cours> coursList = null;
		try {
			CoursMapper coursMapper = sqlSession.getMapper(CoursMapper.class);
			coursList = coursMapper.getAllCourss();
			return coursList;

		} finally {
			sqlSession.close();
		}
	}

	public void updateCours(Cours cours) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			CoursMapper coursMapper = sqlSession.getMapper(CoursMapper.class);
			coursMapper.updateCours(cours);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}

	}

	public void deleteCours(String coursId) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			CoursMapper coursMapper = sqlSession.getMapper(CoursMapper.class);
			coursMapper.deleteCours(coursId);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}

	}
}
