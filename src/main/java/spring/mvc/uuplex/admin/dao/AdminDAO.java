package spring.mvc.uuplex.admin.dao;

import java.util.Map;

import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // id중복확인
	public int insert(MemberDTO dto); // 회원가입
	public int pwdCheck(Map<String, Object> daoMap); // 로그인


}
