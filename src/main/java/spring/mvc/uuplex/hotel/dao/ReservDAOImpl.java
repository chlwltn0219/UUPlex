package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.hotel.dto.ReservDTO;
@Repository
public class ReservDAOImpl implements ReservDAO {

	@Autowired
	private SqlSession sqlsession;

	//예약완료
	@Override
	public int reservation(ReservDTO dto) {
		int cnt = 0;
		
		//cnt = this.sqlsession.insert("spring.mvc.uuplex.hotel.dao.reservDAO.reservation", dto);
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		
		cnt = dao.reservation(dto);
		
		return cnt;
	}
	
	//예약내역조회
	@Override
	public ArrayList<ReservDTO> reservList(String memId) {
		// TODO Auto-generated method stub
		ArrayList<ReservDTO> dtos = null;
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dtos = dao.reservList(memId);
		
		return dtos;
	}

	//예약내역상세
	@Override
	public ReservDTO detail(int reservNum) {
		ReservDTO dto = null;
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dto = dao.detail(reservNum);
		
		return dto;
	}
	

}
