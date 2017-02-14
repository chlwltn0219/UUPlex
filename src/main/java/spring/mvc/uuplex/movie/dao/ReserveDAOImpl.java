package spring.mvc.uuplex.movie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.ReserveDTO;

@Repository 
public class ReserveDAOImpl implements ReserveDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int addReserve(ReserveDTO rdto) {
		int cnt = 0;
		ReserveDAO dao = this.sqlSession.getMapper(ReserveDAO.class);
		System.out.println(rdto);
		cnt = dao.addReserve(rdto);
		
		return cnt;
	}
}
