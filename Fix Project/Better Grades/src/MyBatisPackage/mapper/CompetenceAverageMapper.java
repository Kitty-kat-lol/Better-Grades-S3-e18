package MyBatisPackage.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import MyBatisPackage.model.CompetenceAverage;

public interface CompetenceAverageMapper {
	
	public List<CompetenceAverage> getAllCompetenceAverageByCIP(@Param("cip_etudiant") String cip_etudiant, 
			@Param("cours_id") String cours_id, @Param("groupe_id") int groupe_id, @Param("trimestre_id") String trimestre_id);

}
