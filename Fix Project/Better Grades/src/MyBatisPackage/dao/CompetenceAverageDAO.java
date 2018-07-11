package MyBatisPackage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import MyBatisPackage.mapper.CompetenceAverageMapper;
import MyBatisPackage.model.CompetenceAverage;
import MyBatisPackage.util.MyBatisDAOUtil;

public class CompetenceAverageDAO {
	
	public List<CompetenceAverage> getAllCompetenceAverageByCIP(String cip, String idCours, int groupe_id, String trimestre_id) {
		cip.toUpperCase();
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			CompetenceAverageMapper competenceAverageMapper = sqlSession.getMapper(CompetenceAverageMapper.class);
			return competenceAverageMapper.getAllCompetenceAverageByCIP(cip, idCours, groupe_id, trimestre_id);
		} finally {
			sqlSession.close();
		}
	}
}
