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
	
	int refund(FStatementDTO dto);

}
