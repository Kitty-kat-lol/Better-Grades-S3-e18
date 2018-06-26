package MyBatisPackage.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import MyBatisPackage.model.ExamAverage;

public interface ExamAverageMapper {
	
	public List<ExamAverage> getAllExamAverageByCIPAndClass(@Param("cip_etudiant") String cip_etudiant, @Param("cours_id") String cours_id);

}
