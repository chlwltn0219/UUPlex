package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

public interface BoardNoticeDAO {
	
	// Q&A 게시판
	public int getCount(); // 글개수 구하기
	public int getSubCount(int shopCode); // 카테고리별 글개수 구하기
	public ArrayList<BoardNoticeDTO> getArticles(Map<String, Integer> daoMap); // 게시글 목록조회
	public ArrayList<BoardNoticeDTO> getArticlesSub(Map<String, Integer> daoMap); // 세부 게시글 목록조회
	public int NoticeInsert(BoardNoticeDTO dto); // 	QnA 글추가
	public BoardNoticeDTO getNotice(int num); // 상세조회, 수정내역
	
	public int getMaxNum(); // 글작성 - 답변글이 아닌경우

}
