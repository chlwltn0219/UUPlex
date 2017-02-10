package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.BoardEventDTO;

@Repository
public class BoardEventDAOImpl implements BoardEventDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int getCount() {
		int cnt = 0;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		cnt = dao.getCount();
		
		return cnt;
	}
	
	@Override
	public int getSubCount(int shopCode) {
		
		int cnt = 0;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		cnt = dao.getSubCount(shopCode);
		
		return cnt;
	}

	@Override
	public ArrayList<BoardEventDTO> getArticles(Map<String, Integer> daoMap) {
		
		ArrayList<BoardEventDTO> dtos = null;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class);
		dtos = dao.getArticles(daoMap);
		
		
		return dtos;
	}

	
	
	public int getMaxNum() {
		int maxNum = 0;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class);
		maxNum = dao.getMaxNum();
		
		return maxNum;
	}


	@Override
	public int EventInsert(BoardEventDTO dto) {
		int cnt = 0;
		int num = dto.getEventNum();
		int ref = dto.getRef();
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
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class);
		cnt = dao.EventInsert(dto);
		
		return cnt;
	}

	@Override
	public BoardEventDTO getEvent(int num) {
		
		BoardEventDTO dto = null;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class);
		dto = dao.getEvent(num);
		
		return dto;
	}

	@Override
	public ArrayList<BoardEventDTO> getArticlesSub(Map<String, Integer> daoMap) {
		ArrayList<BoardEventDTO> dtos = null;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class);
		dtos = dao.getArticlesSub(daoMap);
		
		
		return dtos;
	}

	@Override
	public int eventModify(BoardEventDTO dto) {
		int cnt = 0;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		cnt = dao.eventModify(dto);
		
		return cnt;
	}

	@Override
	public String pwdChk(int num) {
		String pwd = "";
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		pwd = dao.pwdChk(num);
		
		return pwd;
	}

	@Override
	public void addReadCnt(int num) {
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		dao.addReadCnt(num);
		
	}

	@Override
	public int eventDel(int num) {
		int cnt = 0;
		
		BoardEventDAO dao = this.sqlsession.getMapper(BoardEventDAO.class); 
		cnt = dao.eventDel(num);
		
		return cnt;
	}
	
}
