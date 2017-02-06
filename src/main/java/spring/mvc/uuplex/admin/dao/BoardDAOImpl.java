package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int getCount() {
		int cnt = 0;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class); 
		cnt = dao.getCount();
		
		return cnt;
	}
	
	@Override
	public int getSubCount(int shopCode) {
		
		int cnt = 0;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class); 
		cnt = dao.getSubCount(shopCode);
		
		return cnt;
	}

	@Override
	public ArrayList<BoardDTO> getArticles(Map<String, Integer> daoMap) {
		
		ArrayList<BoardDTO> dtos = null;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		dtos = dao.getArticles(daoMap);
		
		
		return dtos;
	}

	
	
	public int getMaxNum() {
		int maxNum = 0;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		maxNum = dao.getMaxNum();
		
		return maxNum;
	}

	
	public void updateRely(BoardDTO dto) {
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		dao.updateRely(dto);
	}

	
	@Override
	public int qnaInsert(BoardDTO dto) {
		int cnt = 0;
		int num = dto.getQnaNum();
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
		
		} else {
			updateRely(dto);
			ref_step++;
			ref_level++;
		}
		
		dto.setRef_step(ref_step);
		dto.setRef_level(ref_level);
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		cnt = dao.qnaInsert(dto);
		
		return cnt;
	}

	@Override
	public BoardDTO getQnA(int num) {
		
		BoardDTO dto = null;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		dto = dao.getQnA(num);
		
		return dto;
	}

	@Override
	public ArrayList<BoardDTO> getArticlesSub(Map<String, Integer> daoMap) {
		ArrayList<BoardDTO> dtos = null;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		dtos = dao.getArticlesSub(daoMap);
		
		
		return dtos;
	}
	
}
