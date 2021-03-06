package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardEventDTO;

public interface BoardEventDAO {
	
	// Event 게시판
	public int getCount(); // 글개수 구하기
	public int getSubCount(int shopCode); // 카테고리별 글개수 구하기
	public ArrayList<BoardEventDTO> getArticles(Map<String, Integer> daoMap); // 게시글 목록조회
	public ArrayList<BoardEventDTO> getArticlesSub(Map<String, Integer> daoMap); // 세부 게시글 목록조회
	public int EventInsert(BoardEventDTO dto); // 	QnA 글추가
	public BoardEventDTO getEvent(int num); // 상세조회, 수정내역
	
	public String pwdChk(int num); // 글 비밀번호 확인
	public int eventModify(BoardEventDTO dto); // 글 수정
	public int eventDel(int num); // 글 삭제
	
	public void addReadCnt(int num); // 조회수 증가
	
	public int getMaxNum(); // 글작성 - 답변글이 아닌경우

}
