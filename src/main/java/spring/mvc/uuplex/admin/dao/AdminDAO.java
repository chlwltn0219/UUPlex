package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

public interface AdminDAO {
		
	public int idCheck(String memId); // id�ߺ�Ȯ��
	public int insert(MemberDTO dto); // ȸ������
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap); // �α���
	public int idCode(String memId); // �ڵ尪 ��������
	
	public ArrayList<MemberDTO> memberList(); // ȸ������Ʈ
	public ArrayList<MemberDTO> memberListSub(String grade); // ��޺� ȸ������Ʈ 
	public MemberDTO memberView(String memId); // ȸ����������
	
	public int memUpdate(MemberDTO dto); // ȸ���������� ����
	public int deletepwdCheck(Map<String, Object> daoMap); // ȸ��Ż�� ��й�ȣ üũ
	public int deleteMember(String memId); // ȸ��Ż��
	
	public int upgrade(Map<String, Object> daoMap); // ���
	
	
	public ArrayList<MtestDTO> reservlist_movie(); // ��ȭ ����
	public ArrayList<HtestDTO> reservlist_hotel(); // ȣ�� ����
	public ArrayList<FStatementDTO> reservlist_fitness(); // ��Ʈ�Ͻ� ����
	
	public ArrayList<MtestDTO> reservlist_m_id(String memId);
	public ArrayList<HtestDTO> reservlist_h_id(String memId);
	public ArrayList<FStatementDTO> reservlist_f_id(String memId);
	
	public ArrayList<MtestDTO> reservlist_m_date(Map<String, Object> daoMap);
	public ArrayList<HtestDTO> reservlist_h_date(Map<String, Object> daoMap);
	public ArrayList<FStatementDTO> reservlist_f_date(Map<String, Object> daoMap);
	
	public ArrayList<MtestDTO> reservlist_m_id_date(Map<String, Object> daoMap);
	public ArrayList<HtestDTO> reservlist_h_id_date(Map<String, Object> daoMap);
	public ArrayList<FStatementDTO> reservlist_f_id_date(Map<String, Object> daoMap);
	
	
	// ȸ�����
	public int memberGenderWoman(); // ���� ��
	public int memberGenderMan(); // ���� ��
	public int gradeCount1(); // �Ϲ�ȸ�� ��
	public int gradeCount2(); // Greenȸ�� ��
	public int gradeCount3(); // Goldȸ�� ��
	public int gradeCount4(); // VIPȸ�� ��
	

}
