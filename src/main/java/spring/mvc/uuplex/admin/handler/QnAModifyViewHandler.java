package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnAModifyViewHandler")
public class QnAModifyViewHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
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
			BoardDTO dto = dao.getQnA(num);
			
			model.addAttribute("dto", dto);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("shopCode", shopCode);
			
			return "/main/board/qnaModifyView";
		
		} else {
			
			cnt = -1;
			
			model.addAttribute("cnt", cnt);
			model.addAttribute("num", num);
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("shopCode", shopCode);
			
			return "/main/board/qnaModifyForm";
		}
		
		
	}

}
