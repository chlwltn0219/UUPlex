package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import spring.mvc.uuplex.hotel.dto.ReservDTO;

public interface ReservDAO {
	
	public int reservation(ReservDTO dto);  //예약완료
	public ArrayList<ReservDTO> reservList(String memId);  //예약내역조회
	public ReservDTO detail(int reservNum);	//예약내역상세

}
