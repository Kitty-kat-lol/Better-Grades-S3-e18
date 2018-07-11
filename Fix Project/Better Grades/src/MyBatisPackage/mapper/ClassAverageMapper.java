package MyBatisPackage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import MyBatisPackage.model.ClassAverage;

public interface ClassAverageMapper {
	
	public List<ClassAverage> getAllClassAverageByCIP(String cip);
	
	public ClassAverage getClassAverageByCIPAndCoursId(@Param("cip") String cip_etudiant, 
			@Param("coursId") String cours_id, @Param("groupe_id") int groupe_id, @Param("trimestre_id") String trimestre_id);

}
