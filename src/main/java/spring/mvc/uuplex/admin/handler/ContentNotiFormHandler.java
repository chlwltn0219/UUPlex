package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardNoticeDAO;
import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

@Service("contentNotiFormHandler")
public class ContentNotiFormHandler implements CommandHandler {

	@Autowired
	BoardNoticeDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int number = Integer.parseInt(req.getParameter("number"));
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		BoardNoticeDTO dto = dao.getNotice(num);
		
		if(!req.getRemoteAddr().equals(dto.getIp())) {
			
		}
		
		System.out.println(req.getSession().getAttribute("idCode"));
		
		model.addAttribute("dto", dto);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("number", number);
		model.addAttribute("shopCode", shopCode);
		model.addAttribute("num", num);
		
		return "/main/board/contentNotiForm";
	}

}
