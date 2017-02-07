package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FClassDTO;


public interface FClassDAO {
	
	// 紐⑸줉 �쟾泥� �닔 �샇異�
	int classCount();
	// 紐⑸줉 由ъ뒪�듃 �샇異�
	List<FClassDTO> classList(Map<String,Integer> rangeMap);
	// 추가
	int addClass(FClassDTO dto);
	int addClassWeek(FClassDTO dto);
	// 상세정보 조회
	FClassDTO classDetail(int cid);
	
	int modifyClass(FClassDTO dto);
	
	List<FClassDTO> classActivatedList();

	int reservableCount(int pid);
	
	List<FClassDTO> reservableList(Map<String,Object> paramMap);
	
}
