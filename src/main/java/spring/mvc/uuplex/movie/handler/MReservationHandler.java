package spring.mvc.uuplex.movie.handler;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ReserveDAO;
import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class MReservationHandler implements MCommandHandler {
	
	@Autowired
	ReserveDAO dao;
	
	@Autowired
	ScheduleDAO sdao;

	@Override
	public String process(Model model) {

		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		ScheduleDTO sdto = new ScheduleDTO();
		ReserveDTO rdto = new ReserveDTO();
		
		String memId = req.getParameter("id");
		int schedule_num = Integer.parseInt(req.getParameter("schedule_num"));
		int price = Integer.parseInt(req.getParameter("total"));
		int cnt = Integer.parseInt(req.getParameter("ticketcnt"));
		String seat_num = req.getParameter("seatnum");
		
		sdto = sdao.getScheduleinfo(schedule_num);
		
		rdto.setMemId(memId);
		rdto.setMovie_num(sdto.getMovie_num());
		rdto.setTheater_num(sdto.getTheater_num());
		
		rdto.setCnt(cnt);
		rdto.setPrice(price);
		rdto.setReserve_date(new Timestamp(System.currentTimeMillis()));
		rdto.setSeat_num(seat_num);
		rdto.setSchedule_num(schedule_num);
		
		int status = dao.addReserve(rdto);
		
		model.addAttribute("cnt",status);
		model.addAttribute("dto",rdto);
		model.addAttribute("sdto",sdto);
		
		return "c-box/Movie_main";
	}
}
