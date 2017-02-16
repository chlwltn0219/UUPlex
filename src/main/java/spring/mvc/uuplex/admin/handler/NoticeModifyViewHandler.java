package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardNoticeDAO;
import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

@Service("noticeModifyViewHandler")
public class NoticeModifyViewHandler implements CommandHandler {
	
	@Autowired
	BoardNoticeDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
			
		String passwd = req.getParameter("passwd");
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		
		int cnt = 0;
		String pwd = dao.pwdChk(num);
		
		if(passwd.equals(pwd)) {
			
			BoardNoticeDTO dto = dao.getNotice(num);
			
			model.addAttribute("dto", dto);
			model.addAttribute("shopCode", shopCode);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			
			return "/main/board/noticeModifyView";
			
		} else {
			
			cnt = -1;
			
			model.addAttribute("num", num);
			model.addAttribute("cnt", cnt);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("shopCode", shopCode);
			
			return "/main/board/noticeModifyForm";
			
		}
		
		
	}

}
