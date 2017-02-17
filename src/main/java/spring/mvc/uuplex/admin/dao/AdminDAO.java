package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.CalculateDTO;
import spring.mvc.uuplex.admin.dto.GenderDTO;
import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // id중복확인
	public int insert(MemberDTO dto); // 회원가입
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap); // 로그인
	public int idCode(String memId); // 코드값 가져오기
	
	public ArrayList<MemberDTO> memberList(); // 회원리스트
	public ArrayList<MemberDTO> memberListSub(String grade); // 등급별 회원리스트 
	public MemberDTO memberView(String memId); // 회원개인정보
	
	public int memUpdate(MemberDTO dto); // 회원개인정보 수정
	public int deletepwdCheck(Map<String, Object> daoMap); // 회원탈퇴 비밀번호 체크
	public int deleteMember(String memId); // 회원탈퇴
	
	public int upgrade(Map<String, Object> daoMap); // 등업
	
	
	public ArrayList<MtestDTO> reservlist_movie(); // 영화 예약
	public ArrayList<HtestDTO> reservlist_hotel(); // 호텔 예약
	public ArrayList<FStatementDTO> reservlist_fitness(); // 휘트니스 예약
	
	public ArrayList<MtestDTO> reservlist_m_id(String memId);
	public ArrayList<HtestDTO> reservlist_h_id(String memId);
	public ArrayList<FStatementDTO> reservlist_f_id(String memId);
	
	public ArrayList<MtestDTO> reservlist_m_date(Map<String, Object> daoMap);
	public ArrayList<HtestDTO> reservlist_h_date(Map<String, Object> daoMap);
	public ArrayList<FStatementDTO> reservlist_f_date(Map<String, Object> daoMap);
	
	public ArrayList<MtestDTO> reservlist_m_id_date(Map<String, Object> daoMap);
	public ArrayList<HtestDTO> reservlist_h_id_date(Map<String, Object> daoMap);
	public ArrayList<FStatementDTO> reservlist_f_id_date(Map<String, Object> daoMap);
	
	
	// 회원통계
	public int memberGenderWoman(); // 여성 수
	public int memberGenderMan(); // 남성 수
	public ArrayList<GenderDTO> gradeCount();// 등급별 회원 수
	
	// 매장정산
	public String todayDate(); // 오늘 날짜
	
	public int m_DayCalculate(); // 영화 일일 매출
	public int h_DayCalculate(); // 호텔 일일 매출
	public int f_DayCalculate(); // 휘트니스 일일 매출
	
	
	public ArrayList<CalculateDTO> monthCalculate(); // 월별 매출
	

}
