package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

public interface BoardNoticeDAO {
	
	// �������� �Խ���
	public int getCount(); // �۰��� ���ϱ�
	public int getSubCount(int shopCode); // ī�װ��� �۰��� ���ϱ�
	
	public ArrayList<BoardNoticeDTO> getArticles(Map<String, Integer> daoMap); // �Խñ� �����ȸ
	public ArrayList<BoardNoticeDTO> getArticlesNoti(Map<String, Integer> daoMap); // �Խñ� �����ȸ(����)
	public ArrayList<BoardNoticeDTO> getArticlesSub(Map<String, Integer> daoMap); // ���� �Խñ� �����ȸ
	public ArrayList<BoardNoticeDTO> getArticlesSubNoti(Map<String, Integer> daoMap); // ���� �Խñ� �����ȸ(����)
	
	public int NoticeInsert(BoardNoticeDTO dto); // ���߰�
	public BoardNoticeDTO getNotice(int num); // ����ȸ
	public int NoticeModify(BoardNoticeDTO dto); // �� ����
	public int delNotice(int num); // �� ����
	
	public void addReadCnt(int num); // ��ȸ�� ����
	
	public String pwdChk(int num); // �� ��й�ȣ Ȯ��
	
	public int getMaxNum(); // ���ۼ� - �亯���� �ƴѰ��
	
}
