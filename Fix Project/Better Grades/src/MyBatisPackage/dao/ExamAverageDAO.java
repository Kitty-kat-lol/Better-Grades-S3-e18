package MyBatisPackage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import MyBatisPackage.mapper.ExamAverageMapper;
import MyBatisPackage.model.ExamAverage;
import MyBatisPackage.util.MyBatisDAOUtil;

public class ExamAverageDAO {
	
	public List<ExamAverage> getAllExamAverageByCIPAndClass(String cip, String idCours) {
		cip.toUpperCase();
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			ExamAverageMapper examAverageMapper = sqlSession.getMapper(ExamAverageMapper.class);
			return examAverageMapper.getAllExamAverageByCIPAndClass(cip, idCours);
		} finally {
			sqlSession.close();
		}
	}
}
