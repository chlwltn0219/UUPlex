package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import spring.mvc.uuplex.hotel.dto.ReservDTO;

public interface ReservDAO {
	
	public int reservation(ReservDTO dto);  //����Ϸ�
	public ArrayList<ReservDTO> reservList(String memId);  //���೻����ȸ
	public ReservDTO detail(int reservNum);	//���೻����
	public void cancel(int roomNum);  //�������
}
