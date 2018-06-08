package MyBatisPackage.mapper;

import java.util.List;

import MyBatisPackage.model.ClassAverage;

public interface ClassAverageMapper {
	
	public List<ClassAverage> getAllClassAverageByCIP(String cip);
	
	public ClassAverage getClassAverageByCIPAndCoursId(String cip, String coursId);

}
