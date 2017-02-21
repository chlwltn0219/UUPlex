package spring.mvc.uuplex.movie.dao;

import java.util.List;

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

	@Override
	public List<ReserveDTO> reservations(int schedule_num) {
		List<ReserveDTO> reservation = null;
		ReserveDAO dao = sqlSession.getMapper(ReserveDAO.class);
		reservation = dao.reservations(schedule_num);
		return reservation;
	}

	@Override
	public List<ReserveDTO> getReservList(String id) {
		List<ReserveDTO> reservation = null;
		ReserveDAO dao = sqlSession.getMapper(ReserveDAO.class);
		reservation = dao.getReservList(id);
		return reservation;
	}

	@Override
	public int reservDelete(int reserve_num) {
		int cnt = 0;
		ReserveDAO dao = this.sqlSession.getMapper(ReserveDAO.class);
		cnt = dao.reservDelete(reserve_num);
		
		return cnt;
	}
}
