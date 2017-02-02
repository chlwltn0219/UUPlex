package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // id�ߺ�Ȯ��
	public int insert(MemberDTO dto); // ȸ������
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap); // �α���
	public int idCode(String memId); // �ڵ尪 ��������
	
	public ArrayList<MemberDTO> memberList(); // ȸ������Ʈ
	public MemberDTO memberView(String memId); // ȸ����������
	
	public int memUpdate(MemberDTO dto); // ȸ���������� ����
	public int deletepwdCheck(Map<String, Object> daoMap); // ȸ��Ż�� ��й�ȣ üũ
	public int deleteMember(String memId); // ȸ��Ż��
	
	public int upgrade(Map<String, Object> daoMap); // ���
	

}
