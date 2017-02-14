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
public class DateScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO dao;
	
	@Autowired
	ReserveDAO rdao;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

		List<ScheduleDTO> dtos = null;

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = dateFormat.format(new Date());
		SimpleDateFormat endFormat = new SimpleDateFormat("yyyy-MM-dd");
		String end = endFormat.format(new Date(new Date().getTime() + 60 * 60 * 24 * 1000));

		
		
		date = req.getParameter("date").equals("0") ? dateFormat.format(new Date())
				: endFormat.format(new Date(
						new Date().getTime() + 60 * 60 * 24 * 1000 * Integer.parseInt(req.getParameter("date"))));
		end = endFormat.format(new Date(
				new Date().getTime() + 60 * 60 * 24 * 1000 * (Integer.parseInt(req.getParameter("date")) + 1)));

		Map<String, String> Map = new HashMap<String, String>();
		
		
		Map.put("date", date);
		Map.put("end", end);
		Map.put("movie_num", req.getParameter("movie_num"));

		dtos = dao.dateschedules(Map);
		
		for(int j=0; j<dtos.size(); j++){
			List<ReserveDTO> reserve = null;
			reserve = rdao.reservations(dtos.get(j).getSchedule_num());
			
			int ed = 0;
			
			for(int i = 0; i<reserve.size(); i++){
				ed += reserve.get(i).getCnt();				
			}
			dtos.get(j).setEd(ed);
		}
		
		model.addAttribute("dtos", dtos);

		return "/c-box/user/dateschedule";
	}

}
