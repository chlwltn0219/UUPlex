package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service("reserveAdminHandler")
public class ReserveAdminHandler implements CommandHandler{

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String log = req.getParameter("log");
		
		System.out.println("log : " + log);
		
		if(log.equals("영화")) {
			
			ArrayList<MtestDTO> mdtos = dao.reservlist_movie();
			model.addAttribute("mdtos", mdtos);
			model.addAttribute("log", log);

		} else if(log.equals("호텔")) {
			
			ArrayList<HtestDTO> hdtos = dao.reservlist_hotel();
			model.addAttribute("hdtos", hdtos);
			model.addAttribute("log", log);
			
		} else if(log.equals("휘트니스")) {
			
			
		} else {
			
			ArrayList<MtestDTO> mdtos = dao.reservlist_movie();
			ArrayList<HtestDTO> hdtos = dao.reservlist_hotel();
			model.addAttribute("mdtos", mdtos);
			model.addAttribute("hdtos", hdtos);
			model.addAttribute("log", log);
			System.out.println("1111111111");
		}
		
		
		return "/main/reserve/reservlistid";
		
	}

}
