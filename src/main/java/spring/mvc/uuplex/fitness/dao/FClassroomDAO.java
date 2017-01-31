package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.fitness.dto.FClassroomDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

public interface FClassroomDAO {

	public int classroomCount();
	//리스트 관련
	public List<FClassroomDTO> list(Map<String, Integer> rangeMap);
	//강의실 추가
	int insertClass(FClassroomDTO dto);
	//강의실 상세 정보
	FClassroomDTO classroomDetail(int crid);
	//강의실 정보 수정
	int modifyClassroom(FClassroomDTO dto);
}
