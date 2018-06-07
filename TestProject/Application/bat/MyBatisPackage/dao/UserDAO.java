package MyBatisPackage.dao;

import java.util.List;
import MyBatisPackage.mapper.UserMapper;
import MyBatisPackage.model.User;
import MyBatisPackage.util.MyBatisDAOUtil;

import org.apache.ibatis.session.SqlSession;

/**
 * @author karthy
 *
 */
public class UserDAO {

	public void insertUser(User user) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			userMapper.insertUser(user);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
	}

	public User getUserById(Integer userId) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			return userMapper.getUserById(userId);
		} finally {
			sqlSession.close();
		}
	}

	public List<User> getAllUsers() {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		List<User> userList = null;
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			userList = userMapper.getAllUsers();
			return userList;

		} finally {
			sqlSession.close();
		}
	}

	public void updateUser(User user) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			userMapper.updateUser(user);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}

	}

	public void deleteUser(Integer userId) {
		SqlSession sqlSession = MyBatisDAOUtil.getSqlSessionFactory()
				.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			userMapper.deleteUser(userId);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}

	}
}
