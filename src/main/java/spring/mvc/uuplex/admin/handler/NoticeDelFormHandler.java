package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardNoticeDAO;

@Service("noticeDelFormHandler")
public class NoticeDelFormHandler implements CommandHandler {
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
				
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		
		model.addAttribute("shopCode", shopCode);
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		
		return "/main/board/noticeDelForm";
	}

}
