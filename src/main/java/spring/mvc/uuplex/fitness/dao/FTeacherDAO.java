package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

public interface FTeacherDAO {
	
	
	public int teacherCount();
	//리스트 관련
	public List<FTeacherDTO> list(Map<String, Integer> rangeMap);
	public int tInsert(FTeacherDTO dto);
	//강사 상세 정보
	public FTeacherDTO tdetail(int tid);
	//강사 상세 정보 수정
	public int teacherModify(FTeacherDTO dto);
}
