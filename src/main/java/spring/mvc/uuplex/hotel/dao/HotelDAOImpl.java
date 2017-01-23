package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Autowired
	private SqlSession sqlsession;
	
	DataSource dataSource;
	
	//∞¥Ω«µÓ∑œ
	@Override
	public int insert(HotelDTO dto) {
		int cnt = 0;
		
		cnt = this.sqlsession.insert("spring.mvc.uuplex.hotel.dao.HotelDAO.insert", dto);
		return cnt;
	}

	//∞¥Ω«∏Ò∑œ¡∂»∏
	@Override
	public ArrayList<HotelDTO> list(Map<String, Integer> daoMap) {
		ArrayList<HotelDTO> dtos = null;
		
		HotelDAO dao = this.sqlsession.getMapper(HotelDAO.class);
		dtos = dao.list(daoMap);
		
		return dtos;
	}


}
