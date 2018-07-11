package MyBatisPackage.mapper;

import java.util.List;

import MyBatisPackage.model.SessionAverage;

public interface SessionAverageMapper {
	
	public List<SessionAverage> getAllSessionByCIP(String cip);
	

}
