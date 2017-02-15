package spring.mvc.uuplex.movie.handler;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ReserveDAO;
import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class ScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO dao;
	
	@Autowired
	ReserveDAO rdao;

	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		List<ScheduleDTO> dtos = null;
		String viewPage = "/c-box/Movie_main";
		
		model.addAttribute("date",req.getParameter("date"));
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = dateFormat.format(new Date());
		SimpleDateFormat endFormat = new SimpleDateFormat("yyyy-MM-dd");
		String end = endFormat.format(new Date(new Date().getTime() + 60 * 60 * 24 * 1000));
		model.addAttribute("contentPage", "user/schedule.jsp");
		
		
		
		if(req.getParameter("date")!=null){
			date = req.getParameter("date").equals("0") ? dateFormat.format(new Date()) : endFormat.format(new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * Integer.parseInt(req.getParameter("date"))));
			end = endFormat.format(new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * (Integer.parseInt(req.getParameter("date"))+1)));
			viewPage = "/c-box/user/scheduletable";
		}		

		Map<String, String> Map = new HashMap<String, String>();
		Map.put("date", date);
		Map.put("end", end);
		
		dtos = dao.schedules(Map);
		
		for(int j=0; j<dtos.size(); j++){
			List<ReserveDTO> reserve = null;
			reserve = rdao.reservations(dtos.get(j).getSchedule_num());
			
			int ed = 0;
			
			for(int i = 0; i<reserve.size(); i++){
				
				String[] array = reserve.get(i).getSeat_num().split("/");
				ed += array.length;				
			}
			dtos.get(j).setEd(ed);
		}
		
		model.addAttribute("dtos", dtos);

		return viewPage;
	}

}
