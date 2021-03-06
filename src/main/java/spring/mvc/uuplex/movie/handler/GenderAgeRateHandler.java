package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ManagerDAO;
import spring.mvc.uuplex.movie.dto.AgeRangeDTO;

@Service
public class GenderAgeRateHandler implements MCommandHandler{

	@Autowired
	ManagerDAO dao;
	
	@Override
	public String process(Model model) {
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		int movie_num = 0;
		int total = 0;
		List<AgeRangeDTO> dtos = null;
		int gender = 0;
		
		try {
			movie_num = Integer.parseInt(req.getParameter("movie_num"));
			
			
			//연령별 예매
			dtos = dao.ageRange(movie_num);		
			model.addAttribute("dtos", dtos);
			
			/*System.out.println(dtos.get(0).getNum());
			System.out.println(dtos.get(0).getRng());*/
			
			//영화별 예매  수(티켓 수량은 고려하지 않음)
			total = dao.getReservIdCnt(movie_num);
			model.addAttribute("total",total);
			
			
			
			//성별 예매
			gender = dao.womanCnt(movie_num);
			model.addAttribute("gender", gender);
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		
		return "c-box/manage/genderAgeRate_json";
	}

}
