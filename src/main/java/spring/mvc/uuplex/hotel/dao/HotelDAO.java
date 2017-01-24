package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.hotel.dto.HotelDTO;

public interface HotelDAO {

	public int insert(HotelDTO dto);  //���ǵ��
	public ArrayList<HotelDTO> list();  //���Ǹ����ȸ
	public HotelDTO modify(int roomNum);  //��������
	public int update(HotelDTO dto);  //���Ǽ���
}
