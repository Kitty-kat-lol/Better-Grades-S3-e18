package MyBatisPackage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import MyBatisPackage.mapper.SessionAverageMapper;
import MyBatisPackage.model.SessionAverage;
import MyBatisPackage.util.MyBatisDAOUtil;

public class SessionAverageDAO {
	
	public List<SessionAverage> getSessionByCIP(String cip) {
		cip.toUpperCase();
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			SessionAverageMapper sessionAverageMapper = sqlSession.getMapper(SessionAverageMapper.class);
			return sessionAverageMapper.getSessionByCIP(cip);
		} finally {
			sqlSession.close();
		}
	}
}
