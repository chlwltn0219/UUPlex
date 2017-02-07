package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardNoticeDAO;

@Service("noticeDelProHandler")
public class NoticeDelProHandler implements CommandHandler {

	@Autowired
	BoardNoticeDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
				
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		String passwd = req.getParameter("passwd");
		
		int cnt = 0;
		int delCnt = 0;
		String pwChk = dao.pwdChk(num);
		
		System.out.println("pwChk : " + pwChk);
		System.out.println("passwd : " + passwd);
		
		if(pwChk.equals(passwd)) {
			
			delCnt = dao.delNotice(num);
			
			model.addAttribute("shopCode", shopCode);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("delCnt", delCnt);
			
			return "/main/board/noticeDelPro";
			
		} else {
			
			cnt = -1;
			
			model.addAttribute("shopCode", shopCode);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("cnt", cnt);
			
			return "/main/board/noticeDelForm";
		}		
		
	}

}
