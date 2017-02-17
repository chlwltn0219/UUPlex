package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FProgramDTO;


public interface FProgramDAO {
	
	// 筌뤴뫖以� 占쎌읈筌ｏ옙 占쎈땾 占쎌깈�빊占�
	int programCount();
	// 筌뤴뫖以� �뵳�딅뮞占쎈뱜 占쎌깈�빊占�
	List<FProgramDTO> programList(Map<String,Integer> rangeMap);
	// 異붽�
	int addProgram(FProgramDTO dto);
	// �긽�꽭�젙蹂� 議고쉶
	FProgramDTO programDetail(int pid);
	
	int modifyProgram (FProgramDTO dto);

	List<FProgramDTO> programActivatedList();
	
	List<FProgramDTO> reservableList(String sid);
	
	List<FProgramDTO> pInfo();
	
	int deactivateProgram (int tid);
	
}
