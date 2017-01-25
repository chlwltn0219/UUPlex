package spring.mvc.uuplex.admin.dao;

import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // 회원가입
	public int insert(MemberDTO dto); // 회원가입

}
