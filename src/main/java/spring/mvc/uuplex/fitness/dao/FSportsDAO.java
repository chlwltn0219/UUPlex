package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FSportsDTO;

public interface FSportsDAO {
	
	// 목록 전체 수 호출
	int sportsCount();
	// 목록 리스트 호출
	List<FSportsDTO> sportsList(Map<String,Integer> rangeMap);
	// 추가
	int addSports(FSportsDTO dto);
}
