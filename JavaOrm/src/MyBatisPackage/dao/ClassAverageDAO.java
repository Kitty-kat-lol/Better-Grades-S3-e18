package MyBatisPackage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import MyBatisPackage.mapper.ClassAverageMapper;
import MyBatisPackage.model.ClassAverage;
import MyBatisPackage.util.MyBatisDAOUtil;

public class ClassAverageDAO {
	
	/*public List<ClassAverage> getAllClassAverageByCIP(String cip) {
		cip.toUpperCase();
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			ClassAverageMapper classAverageMapper = sqlSession.getMapper(ClassAverageMapper.class);
			return classAverageMapper.getAllClassAverageByCIP(cip);
		} finally {
			sqlSession.close();
		}
	}*/
	
	public ClassAverage getClassAverageByCIPAndCoursId(String cip, String coursId) {
		
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			ClassAverageMapper classAverageMapper = sqlSession.getMapper(ClassAverageMapper.class);
			return classAverageMapper.getClassAverageByCIPAndCoursId(cip, coursId);
		} finally {
			sqlSession.close();
		}
		
	}
}
