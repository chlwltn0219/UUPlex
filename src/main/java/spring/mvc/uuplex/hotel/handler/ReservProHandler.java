package spring.mvc.uuplex.hotel.handler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;
import spring.mvc.uuplex.hotel.dto.ReservDTO;

@Service("ReservProHandler")
public class ReservProHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

			String memId = (String) req.getSession().getAttribute("id");
			// 1단계. dto 바구니 생성
			ReservDTO dto = new ReservDTO();
			int reserveNum = dao.getReservNum();
			String roomName = req.getParameter("roomName");

			// 2단계. dto 바구니에 담는다.
			dto.setReservNum(reserveNum);
			dto.setRoomName(roomName);
			dto.setMemId(memId);
			dto.setCheckIn(req.getParameter("checkIn"));
			dto.setCheckOut(req.getParameter("checkOut"));
			dto.setDay(Integer.parseInt(req.getParameter("day")));
			dto.setCapacity(Integer.parseInt(req.getParameter("capacity")));
			dto.setExtraBed(req.getParameter("extraBed"));
			dto.setLaundry(req.getParameter("laundry"));
			dto.setBreakfast(req.getParameter("breakfast"));
			dto.setFirstName(req.getParameter("firstName"));
			dto.setLastName(req.getParameter("lastName"));
			dto.setEmail(req.getParameter("email"));
			dto.setCountry(req.getParameter("country"));
			dto.setCard(req.getParameter("card"));
			dto.setCardNum(req.getParameter("cardNum"));
			dto.setCardEndM(req.getParameter("cardEndM"));
			dto.setTotCharge(Integer.parseInt(req.getParameter("totCharge")));

			int cnt = dao.reservation(dto);
			
			
			// 예약 날짜 등록
			String date = req.getParameter("checkIn");
			SimpleDateFormat trans = new SimpleDateFormat("yyyy-MM-dd");
			try {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				
				int dayCnt = Integer.parseInt(req.getParameter("day"));
				Date dt = trans.parse(date);
				
				for(int i=0;i<dayCnt;i++) {				
				
					int da = dt.getDate(); // 일 
					String day = String.valueOf(da);
					day = da < 10 ? "0" + day : day;
					
					int mon = dt.getMonth() + 1; // 월 
					String month = String.valueOf(mon);
					month = mon < 10 ? "0" + month : month; 
					
					int year = dt.getYear() + 1900;
					String resDate = year + "-" + month + "-" + day;
					System.out.println("date : " + resDate);
				
					daoMap.put("resDate", resDate);
					daoMap.put("reserveNum", reserveNum);
					daoMap.put("roomName", roomName);
					
					dao.reserveDay(daoMap);
					
					dt.setDate(da+1);
				}
				
			} catch (ParseException e) {
				e.printStackTrace();
				System.out.println("날짜계산 실패");
			}

			model.addAttribute("cnt", cnt);

		return "/hotel/reservPro";
	}

}
