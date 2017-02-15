package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ReserveDAO;
import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;
import spring.mvc.uuplex.movie.dto.TheaterDTO;
@Service
public class TicketHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO sdao;
	
	@Autowired
	TheaterDAO tdao;
	
	@Autowired
	ReserveDAO rdao;
	
	@Override
	public String process(Model model) {

		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		TheaterDTO theater = null;
		List<ReserveDTO> reserve = null;
		int schedule_num = Integer.parseInt(req.getParameter("schedule_num"));
		
		theater = tdao.Theater(schedule_num);
		model.addAttribute("theater", theater);
		reserve = rdao.reservations(schedule_num);
		
		String[] row = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"};
		
		for(int i = 0; i<reserve.size(); i++){
			
			String[] array = reserve.get(i).getSeat_num().split("/");
			
			for(int j=0; j<array.length; j++){
				for(int a=0; a<row.length; a++){
					if(row[a].equals(array[j].substring(0, 1))){
						int num = a*20 + Integer.parseInt(array[j].substring(1))-1;
						theater.setSeats(num,"3");
					}
				}
			}
		}

		model.addAttribute("row", row);
		ScheduleDTO scheduleInfo = sdao.getScheduleinfo(schedule_num);
		
		model.addAttribute("scheduleInfo", scheduleInfo);
		
		return "c-box/Movie_main";
	}

}
