package spring.mvc.uuplex.admin.dao;

<<<<<<< HEAD
=======
import java.util.ArrayList;
import java.util.Map;

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
import spring.mvc.uuplex.admin.dto.MemberDTO;

public interface AdminDAO {
		
<<<<<<< HEAD
	public int idCheck(String memId); // ȸ������
	public int insert(MemberDTO dto); // ȸ������
=======
	public int idCheck(String memId); // id�ߺ�Ȯ��
	public int insert(MemberDTO dto); // ȸ������
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap); // �α���
	public int idCode(String memId); // �ڵ尪 ��������
	
	public ArrayList<MemberDTO> memberList(); // ȸ������Ʈ
	public MemberDTO memberView(String memId); // ȸ����������

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a

}
