package MyBatisPackage.mapper;

import java.util.List;

import MyBatisPackage.model.CompetenceAverage;

public interface CompetenceAverageMapper {
	
	public List<CompetenceAverage> getAllCompetenceAverageByCIP(String cip);

}
