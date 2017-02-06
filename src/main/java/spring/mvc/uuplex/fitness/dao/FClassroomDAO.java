package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FClassroomDTO;

public interface FClassroomDAO {

	public int classroomCount();
	//����Ʈ ����
	public List<FClassroomDTO> list(Map<String, Integer> rangeMap);
	//���ǽ� �߰�
	int insertClass(FClassroomDTO dto);
	//���ǽ� �� ����
	FClassroomDTO classroomDetail(int crid);
	//���ǽ� ���� ����
	int modifyClassroom(FClassroomDTO dto);
	
	public List<FClassroomDTO> activatedList();
}
