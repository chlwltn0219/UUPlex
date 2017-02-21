package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;
import java.util.Map;

import spring.mvc.uuplex.hotel.dto.ReservDTO;

public interface ReservDAO {
	
	public int reservation(ReservDTO dto);
	public ArrayList<ReservDTO> reservList(String memId);  
	public ReservDTO detail(int reservNum);	
	public void cancel(int reservNum); 
	public void calcancel(int reservNum); 
	public ArrayList<ReservDTO> adminCalendar(String checkIn); 
	public void reserveDay(Map<String, Object> daoMap);
	public int getReservNum();
	public int reservFormCal(Map<String, Object> daoMap); 
}
