package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.MemberDTO;
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

	//예약취소
	@Override
	public void cancel(int reservNum) {
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dao.cancel(reservNum);
	}
	@Override
	public void calcancel(int reservNum) {
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dao.calcancel(reservNum);
		
	}

	//(관리자)예약내역조회
	@Override
	public ArrayList<ReservDTO> adminCalendar(String checkIn) {
		ArrayList<ReservDTO> dtos = null;
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dtos = dao.adminCalendar(checkIn);
		
		return dtos;
	}

	//예약(숙박일계산)
	@Override
	public void reserveDay(Map<String, Object> daoMap) {
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dao.reserveDay(daoMap);
		
	}

	//예약 번호 받아오기
	@Override
	public int getReservNum() {
		int reserveNum = 0;
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		reserveNum = dao.getReservNum();
		
		return reserveNum;
	}

	//(이용자)예약내역조회
	@Override
	public int reservFormCal(Map<String, Object> daoMap) {
		int reservNum = 0;
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		reservNum = dao.reservFormCal(daoMap);
		
		return reservNum;
	}

	
}
