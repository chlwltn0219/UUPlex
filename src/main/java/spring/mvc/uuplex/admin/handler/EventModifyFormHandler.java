package spring.mvc.uuplex.admin.handler;


import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;



import spring.mvc.uuplex.admin.dao.BoardEventDAO;

@Service("eventModifyFormHandler")
public class EventModifyFormHandler implements CommandHandler {

	@Autowired
	BoardEventDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("shopCode", shopCode);
		
		return "/main/board/eventModifyForm";
	}

}
