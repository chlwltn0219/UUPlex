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
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Service("memReserveHandler")
public class MemReserveHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = (String) req.getSession().getAttribute("id");
		
		ArrayList<MtestDTO> mdtos = dao.reservlist_m_id(memId);
		ArrayList<HtestDTO> hdtos = dao.reservlist_h_id(memId);
		ArrayList<FStatementDTO> fdtos = dao.reservlist_f_id(memId);
		
		model.addAttribute("mdtos", mdtos);
		model.addAttribute("hdtos", hdtos);
		model.addAttribute("fdtos", fdtos);
		model.addAttribute("memId", memId);
		
		
		return "/main/admin/memReserve";
	}

}
