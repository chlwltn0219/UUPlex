package spring.mvc.uuplex.hotel.dao;

import java.util.ArrayList;

import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

public interface HotelDAO {

	public int insert(HotelDTO dto);  //객실등록
	public ArrayList<HotelDTO> list();  //객실목록조회
	public HotelDTO modify(int roomNum);  //수정내역
	public int update(HotelDTO dto);  //객실수정
	public void delete(int roomNum);  //객실삭제
	public MemberDTO reserView(String memId);  //(예약)회원정보조회
}
