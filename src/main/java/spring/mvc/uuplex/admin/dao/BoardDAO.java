package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardDTO;

public interface BoardDAO {
	
	// Q&A �Խ���
	public int getCount(); // �۰��� ���ϱ�
	public ArrayList<BoardDTO> getArticles(Map<String, Integer> daoMap); // �Խñ� �����ȸ
	public int qnaInsert(BoardDTO dto); // 	QnA ���߰�
	public BoardDTO getQnA(int num); // ����ȸ, ��������
	
	public int getMaxNum(); // ���ۼ� - �亯���� �ƴѰ��
	public void updateRely(BoardDTO dto);  // ���ۼ� - �亯���� ���
	

}
