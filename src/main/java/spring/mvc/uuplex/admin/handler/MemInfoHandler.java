package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.MemberDTO;

@Service("memInfoHandler")
public class MemInfoHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = (String) req.getSession().getAttribute("id");
		
		MemberDTO dto = dao.memberView(memId);
		
		model.addAttribute("dto", dto);
		
		return "/main/mainHeader/memInfo";
	}

}
