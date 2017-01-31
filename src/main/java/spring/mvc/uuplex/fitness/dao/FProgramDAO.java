package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;


public interface FProgramDAO {
	
	// 紐⑸줉 �쟾泥� �닔 �샇異�
	int programCount();
	// 紐⑸줉 由ъ뒪�듃 �샇異�
	List<FProgramDTO> programList(Map<String,Integer> rangeMap);
	// 추가
	int addProgram(FProgramDTO dto);
	// 상세정보 조회
	FProgramDTO programDetail(int pid);
	
	int modifyProgram (FProgramDTO dto);
}
