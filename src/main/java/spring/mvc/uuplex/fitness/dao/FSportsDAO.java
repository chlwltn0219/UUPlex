package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FSportsDTO;


public interface FSportsDAO {
	
	// 紐⑸줉 �쟾泥� �닔 �샇異�
	int sportsCount();
	// 紐⑸줉 由ъ뒪�듃 �샇異�
	List<FSportsDTO> sportsList(Map<String,Integer> rangeMap);
	// 추가
	int addSports(FSportsDTO dto);
	// 상세정보 조회
	FSportsDTO sportsDetail(int sid);
}
