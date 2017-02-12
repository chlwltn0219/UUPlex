package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnADelFormHandler")
public class QnADelFormHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int num = Integer.parseInt(req.getParameter("num"));
		int ref_step = Integer.parseInt(req.getParameter("ref_step"));
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));

		model.addAttribute("num", num);
		model.addAttribute("ref_step", ref_step);
		model.addAttribute("shopCode", shopCode);
		
		return "/main/board/qnaDelForm";
	}

}
