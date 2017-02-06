package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.MemberDTO;

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
	

}
