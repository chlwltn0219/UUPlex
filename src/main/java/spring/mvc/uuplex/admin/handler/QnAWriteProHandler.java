package spring.mvc.uuplex.admin.handler;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnAWriteProHandler")
public class QnAWriteProHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		BoardDTO dto = new BoardDTO();
		
		dto.setMemId(req.getParameter("memId"));
		dto.setSubject(req.getParameter("subject"));
		dto.setQnaPasswd(req.getParameter("passwd"));
		dto.setContent(req.getParameter("content"));
		
		dto.setQnaNum(Integer.parseInt(req.getParameter("num")));
		dto.setRef(Integer.parseInt(req.getParameter("ref")));
		dto.setRef_step(Integer.parseInt(req.getParameter("ref_step")));
		dto.setRef_level(Integer.parseInt(req.getParameter("ref_level")));
		
		dto.setQna_date(new Timestamp(System.currentTimeMillis()));
		dto.setIp(req.getRemoteAddr());
		
		int cnt = dao.qnaInsert(dto);
		
		model.addAttribute("cnt", cnt);
		
		return "/main/board/qnaWritePro";
	}

}
