package spring.mvc.uuplex.admin.handler;


import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;



import spring.mvc.uuplex.admin.dao.BoardEventDAO;
import spring.mvc.uuplex.admin.dto.BoardEventDTO;

@Service("eventModifyViewHandler")
public class EventModifyViewHandler implements CommandHandler {

	@Autowired
	BoardEventDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String passwd = req.getParameter("passwd");
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		int cnt = 0;
		String pwd = dao.pwdChk(num);
		
		if(passwd.equals(pwd)) {
			
			BoardEventDTO dto = dao.getEvent(num);
			
			model.addAttribute("dto", dto);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("shopCode", shopCode);
			
			return "/main/board/eventModifyView";
			
		} else {
			
			cnt = -1;
			
			model.addAttribute("num", num);
			model.addAttribute("cnt", cnt);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("shopCode", shopCode);
			
			return "/main/board/eventModifyForm";
			
		}
		
		
		
		
		
	}

}
