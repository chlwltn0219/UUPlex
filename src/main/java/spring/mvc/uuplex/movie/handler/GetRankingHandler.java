package spring.mvc.uuplex.movie.handler;


import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.SalesDTO;

@Service
public class GetRankingHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model){
		
		List<MovieInfoDTO> dtos = null;
		dtos = dao.getRanking();//예매율 구하기
		
		int reserveCnt = 0;
		reserveCnt = dao.reserveCnt();//총 예매 수량
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("reserveCnt",reserveCnt);
		
		
		Map<String, Timestamp> rangeMap = new HashMap<String, Timestamp>();
		
		//1년전 동월의 1일
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		cal.set(Calendar.DATE, 1);
		
		//전월의 말일
		Calendar cal2 = Calendar.getInstance();
		cal2.add(Calendar.MONTH, -1);
		cal2.set(Calendar.DATE, cal2.getMaximum(Calendar.DAY_OF_MONTH));
		cal2.set(Calendar.HOUR, 0);
		cal2.set(Calendar.MINUTE, 0);
		cal2.set(Calendar.SECOND, 0);
		cal2.set(Calendar.MILLISECOND, 0);
		
		rangeMap.put("startDate", new Timestamp(cal.getTimeInMillis()));
		rangeMap.put("endDate", new Timestamp(cal2.getTimeInMillis()));
		
		List<SalesDTO> list = null;
		list = dao.getSales(rangeMap); //최근 1년 동안의 월별 매출
		
		model.addAttribute("list",list);
		
		
		
		
		return "c-box/Movie_main";
	}

}
