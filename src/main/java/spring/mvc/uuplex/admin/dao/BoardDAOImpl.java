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
	public ArrayList<BoardDTO> getArticles(Map<String, Integer> daoMap) {
		
		ArrayList<BoardDTO> dtos = null;
		
		BoardDAO dao = this.sqlsession.getMapper(BoardDAO.class);
		dtos = dao.getArticles(daoMap);
		
		
		return dtos;
	}

	@Override
	public int qnaInsert(BoardDTO dto) {
		int cnt = 0;
		
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
	
}
