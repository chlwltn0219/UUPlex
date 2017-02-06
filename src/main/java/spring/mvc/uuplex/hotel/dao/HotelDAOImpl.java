package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Autowired
	private SqlSession sqlsession;
	
	//객실등록
	@Override
	public int insert(HotelDTO dto) {
		int cnt = 0;
		
		cnt = this.sqlsession.insert("spring.mvc.uuplex.hotel.dao.HotelDAO.insert", dto);
		return cnt;
	}

	//객실목록조회
	@Override
	public ArrayList<HotelDTO> list() {
		ArrayList<HotelDTO> dtos = null;
		
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		dtos = dao.list();
		
		return dtos;
	}

	//수정내역
	@Override
	public HotelDTO modify(int roomNum) {
		HotelDTO dto = null;
		
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		dto = dao.modify(roomNum);
		
		return dto;
	}

	//객실수정
	@Override
	public int update(HotelDTO dto) {
		int cnt = 0;
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		cnt = dao.update(dto);
		
		return cnt;
	}

	//객실삭제
	@Override
	public void delete(int roomNum) {
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		dao.delete(roomNum);
	}
	
	//(예약)회원정보조회
	@Override
	public MemberDTO reserView(String memId) {
		MemberDTO dto = null;
		
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		dto = dao.reserView(memId);
		
		return dto;
	}


}
