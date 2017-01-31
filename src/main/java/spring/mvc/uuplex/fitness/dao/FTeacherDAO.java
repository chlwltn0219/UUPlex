package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

public interface FTeacherDAO {
	
	
	public int teacherCount();
	//����Ʈ ����
	public List<FTeacherDTO> list(Map<String, Integer> rangeMap);
	public int tInsert(FTeacherDTO dto);
	//���� �� ����
	public FTeacherDTO tdetail(int tid);
	//���� �� ���� ����
	public int teacherModify(FTeacherDTO dto);
	
	public List<FTeacherDTO> activatedList();
	
	public List<FTeacherDTO> suitableList(int sid);
}
