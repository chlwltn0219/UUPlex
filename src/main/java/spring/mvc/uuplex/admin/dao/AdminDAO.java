package spring.mvc.uuplex.admin.dao;

import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // ȸ������
	public int insert(MemberDTO dto); // ȸ������

}
