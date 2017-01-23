package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardDTO;

public interface BoardDAO {
	
	// Q&A 게시판
	public int getCount(); // 글개수 구하기
	public ArrayList<BoardDTO> getArticles(Map<String, Integer> daoMap); // 게시글 목록조회
	public int qnaInsert(BoardDTO dto); // 	QnA 글추가
	public BoardDTO getQnA(int num); // 상세조회, 수정내역
	
	public int getMaxNum(); // 글작성 - 답변글이 아닌경우
	public void updateRely(BoardDTO dto);  // 글작성 - 답변글인 경우
	

}
