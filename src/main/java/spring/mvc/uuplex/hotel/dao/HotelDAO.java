package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.hotel.dto.HotelDTO;

public interface HotelDAO {

	public int insert(HotelDTO dto);  //���ǵ��
	public ArrayList<HotelDTO> list(Map<String, Integer> daoMap);  //���Ǹ����ȸ
}
