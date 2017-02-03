package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardEventDTO;

public interface BoardEventDAO {
	
	// Event �Խ���
	public int getCount(); // �۰��� ���ϱ�
	public int getSubCount(int shopCode); // ī�װ��� �۰��� ���ϱ�
	public ArrayList<BoardEventDTO> getArticles(Map<String, Integer> daoMap); // �Խñ� �����ȸ
	public ArrayList<BoardEventDTO> getArticlesSub(Map<String, Integer> daoMap); // ���� �Խñ� �����ȸ
	public int EventInsert(BoardEventDTO dto); // 	QnA ���߰�
	public BoardEventDTO getEvent(int num); // ����ȸ, ��������
	
	public int getMaxNum(); // ���ۼ� - �亯���� �ƴѰ��

}
