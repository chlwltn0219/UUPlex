package spring.mvc.uuplex.admin.dao;

import java.util.Map;

import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // id�ߺ�Ȯ��
	public int insert(MemberDTO dto); // ȸ������
	public int pwdCheck(Map<String, Object> daoMap); // �α���


}
