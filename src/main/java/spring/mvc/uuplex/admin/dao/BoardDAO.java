package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardDTO;

public interface BoardDAO {
	
	// Q&A 게시판
	public int getCount(); // 글개수 구하기
	public ArrayList<BoardDTO> getArticles(Map<String, Integer> daoMap);
	public int qnaInsert(BoardDTO dto); // 	QnA 글추가
	public BoardDTO getQnA(int num);

}
