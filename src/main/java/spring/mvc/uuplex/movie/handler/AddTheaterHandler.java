package spring.mvc.uuplex.movie.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.TheaterDTO;

@Service
public class AddTheaterHandler implements MCommandHandler {

	@Autowired
	TheaterDAO dao;

	@Override
	public String process(Model model) {

		TheaterDTO dto = new TheaterDTO();
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");

		String[] seat = req.getParameterValues("seat");
		String seat_arrange = "";
		int seatCnt = 0;

		for (int i = 0; i < seat.length; i++) {
			if (Integer.parseInt(seat[i]) != 0) {
				seatCnt++;
			}
			seat_arrange += seat[i];
		}

		dto.setSeatCnt(seatCnt);
		dto.setSeat_arrange(seat_arrange);
		int cnt = dao.addTheater(dto);

		model.addAttribute("cnt", cnt);
		
		return "/c-box/manage/theater_InputPro";
	}

}
