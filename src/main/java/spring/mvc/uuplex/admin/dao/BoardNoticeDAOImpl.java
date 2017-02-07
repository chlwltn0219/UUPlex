package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

@Repository
public class BoardNoticeDAOImpl implements BoardNoticeDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int getCount() {
		int cnt = 0;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class); 
		cnt = dao.getCount();
		
		return cnt;
	}
	
	@Override
	public int getSubCount(int shopCode) {
		
		int cnt = 0;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class); 
		cnt = dao.getSubCount(shopCode);
		
		return cnt;
	}

	@Override
	public ArrayList<BoardNoticeDTO> getArticles(Map<String, Integer> daoMap) {
		
		ArrayList<BoardNoticeDTO> dtos = null;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class);
		dtos = dao.getArticles(daoMap);
		
		
		return dtos;
	}

	
	
	public int getMaxNum() {
		int maxNum = 0;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class);
		maxNum = dao.getMaxNum();
		
		return maxNum;
	}


	@Override
	public int NoticeInsert(BoardNoticeDTO dto) {
		int cnt = 0;
		int num = dto.getNotiNum();
		System.out.println("num2 : " + num);
		int ref = dto.getRef();
		System.out.println("ref : " + ref);
		int ref_step = dto.getRef_step();
		int ref_level = dto.getRef_level();
		
		if(num == 0){
			cnt = getCount();
			
			if(cnt > 0) {
				int maxNum = getMaxNum();
				ref = maxNum +1;
			} else {
				ref = 1;
			}
			
			dto.setRef(ref);
			ref_step = 0;
			ref_level = 0;
		
		}
		
		dto.setRef_step(ref_step);
		dto.setRef_level(ref_level);
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class);
		cnt = dao.NoticeInsert(dto);
		
		return cnt;
	}

	@Override
	public BoardNoticeDTO getNotice(int num) {
		
		BoardNoticeDTO dto = null;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class);
		dto = dao.getNotice(num);
		
		return dto;
	}

	@Override
	public ArrayList<BoardNoticeDTO> getArticlesSub(Map<String, Integer> daoMap) {
		ArrayList<BoardNoticeDTO> dtos = null;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class);
		dtos = dao.getArticlesSub(daoMap);
		
		
		return dtos;
	}
	
	@Override
	public String pwdChk(int num) {
		String pwd = "";
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class); 
		pwd = dao.pwdChk(num);
		
		return pwd;
	}

	@Override
	public int delNotice(int num) {
		int cnt = 0;
		
		BoardNoticeDAO dao = this.sqlsession.getMapper(BoardNoticeDAO.class); 
		cnt = dao.delNotice(num);
		
		return cnt;
	}
	
}
