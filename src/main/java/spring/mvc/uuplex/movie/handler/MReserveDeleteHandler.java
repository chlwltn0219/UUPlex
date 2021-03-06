package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ReserveDAO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;

@Service
public class MReserveDeleteHandler implements MCommandHandler {

	@Autowired
	ReserveDAO dao; 
	
	@Override
	public String process(Model model) {
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		int reserve_num = Integer.parseInt(req.getParameter("reserve_num"));
		String id = (String) req.getSession().getAttribute("id");
		
		int cnt = dao.reservDelete(reserve_num);
		
		List<ReserveDTO> dtos = null;
		
		dtos = dao.getReservList(id);
		model.addAttribute("dtos",dtos);
		
		
		return "c-box/Movie_main";
	}
}
