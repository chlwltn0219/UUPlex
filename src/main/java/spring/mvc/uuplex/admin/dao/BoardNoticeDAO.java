package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

public interface BoardNoticeDAO {
	
	// 공지사항 게시판
	public int getCount(); // 글개수 구하기
	public int getSubCount(int shopCode); // 카테고리별 글개수 구하기
	
	public ArrayList<BoardNoticeDTO> getArticles(Map<String, Integer> daoMap); // 게시글 목록조회
	public ArrayList<BoardNoticeDTO> getArticlesNoti(Map<String, Integer> daoMap); // 게시글 목록조회(공지)
	public ArrayList<BoardNoticeDTO> getArticlesSub(Map<String, Integer> daoMap); // 세부 게시글 목록조회
	public ArrayList<BoardNoticeDTO> getArticlesSubNoti(Map<String, Integer> daoMap); // 세부 게시글 목록조회(공지)
	
	public int NoticeInsert(BoardNoticeDTO dto); // 글추가
	public BoardNoticeDTO getNotice(int num); // 상세조회
	public int NoticeModify(BoardNoticeDTO dto); // 글 수정
	public int delNotice(int num); // 글 삭제
	
	public void addReadCnt(int num); // 조회수 증가
	
	public String pwdChk(int num); // 글 비밀번호 확인
	
	public int getMaxNum(); // 글작성 - 답변글이 아닌경우
	
}
