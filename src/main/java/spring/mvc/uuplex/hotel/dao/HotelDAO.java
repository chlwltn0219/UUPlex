package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

public interface HotelDAO {

	public int insert(HotelDTO dto);  //���ǵ��
	public ArrayList<HotelDTO> list();  //���Ǹ����ȸ
	public HotelDTO modify(int roomNum);  //��������
	public int update(HotelDTO dto);  //���Ǽ���
	public void delete(int roomNum);  //���ǻ���
	public MemberDTO reserView(String memId);  //(����)ȸ��������ȸ
}
