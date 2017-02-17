package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.CalculateDTO;

@Service("calculateHandler")
public class CalculateHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		// 금일 매출 관련
		String todayDate = dao.todayDate();
		System.out.println(dao.todayDate());
		
		int movieDayCal = dao.m_DayCalculate();
		int hotelDayCal = dao.h_DayCalculate();
		int fitnessDayCal = dao.f_DayCalculate();
		
		
		model.addAttribute("todayDate", todayDate);
		model.addAttribute("movieDayCal", movieDayCal);
		model.addAttribute("hotelDayCal", hotelDayCal);
		model.addAttribute("fitnessDayCal", fitnessDayCal);
		
		
		// 월별 매출 관련
		
		ArrayList<CalculateDTO> monthCal = dao.monthCalculate();
		
		model.addAttribute("monthCal", monthCal);
		
		return "/main/admin/calculate";
	}

}
