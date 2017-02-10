package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FStatementDTO;

public interface FStatementDAO {
	
	int statementCount();
	List<FStatementDTO> statementList(Map<String, Integer> rangeMap);
	
	int userStatementCount(String memid);
	List<FStatementDTO> userStatementList(Map<String, Object> rangeMap);
	
	int reserveInput(FStatementDTO dto);
	
	FStatementDTO refundForm(Map<String, Object> info);
	
	int refundPro(FStatementDTO dto);
	
	int checkStatement(Map<String, Object> info);

	List<Map<String, Object>> dailySales();
	List<Map<String, Object>> monthlySales();
	
}
