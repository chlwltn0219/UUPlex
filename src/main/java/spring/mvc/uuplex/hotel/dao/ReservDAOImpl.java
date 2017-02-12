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

	//����Ϸ�
	@Override
	public int reservation(ReservDTO dto) {
		int cnt = 0;
		
		//cnt = this.sqlsession.insert("spring.mvc.uuplex.hotel.dao.reservDAO.reservation", dto);
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		
		cnt = dao.reservation(dto);
		
		return cnt;
	}
	
	//���೻����ȸ
	@Override
	public ArrayList<ReservDTO> reservList(String memId) {
		// TODO Auto-generated method stub
		ArrayList<ReservDTO> dtos = null;
		
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dtos = dao.reservList(memId);
		
		return dtos;
	}

	//���೻����
	@Override
	public ReservDTO detail(int reservNum) {
		ReservDTO dto = null;
		ReservDAO dao = this.sqlsession.getMapper(ReservDAO.class);
		dto = dao.detail(reservNum);
		
		return dto;
	}
	

}
