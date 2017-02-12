package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnAModifyProHandler")
public class QnAModifyProHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int shopCode = 100;
		
		String code = req.getParameter("shopCode");
		if(code.equals("영화")) {
			shopCode = 101;
		} else if (code.equals("호텔")) {
			shopCode = 102;
		} else if (code.equals("휘트니스")) {
			shopCode = 103;
		}
		
		BoardDTO dto = new BoardDTO();
		
		dto.setQnaNum(Integer.parseInt(req.getParameter("num")));
		dto.setQnaPasswd(req.getParameter("passwd"));
		dto.setSubject(req.getParameter("subject"));
		dto.setContent(req.getParameter("content"));
		
		int cnt = 0;
		cnt = dao.qnaModify(dto);
		
		model.addAttribute("shopCode", shopCode);
		model.addAttribute("cnt", cnt);
		
		return "/main/board/qnaModifyPro";
	}

}
