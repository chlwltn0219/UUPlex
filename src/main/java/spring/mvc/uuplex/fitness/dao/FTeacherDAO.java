package spring.mvc.uuplex.fitness.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

public interface FTeacherDAO {
	
	int teacherCount();
	public List<FTeacherDTO> list(Map<String, Integer> rangeMap);
	public int tInsert(FTeacherDTO dto);
}
