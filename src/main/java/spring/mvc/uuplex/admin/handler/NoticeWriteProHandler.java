package spring.mvc.uuplex.admin.handler;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardNoticeDAO;
import spring.mvc.uuplex.admin.dto.BoardNoticeDTO;

@Service("noticeWriteProHandler")
public class NoticeWriteProHandler implements CommandHandler {

	@Autowired
	BoardNoticeDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int shopCode = 100;
		String code = req.getParameter("shopCode");
		System.out.println("code = " + code);
		if(code.equals("영화")) {
			shopCode = 101;
		} else if (code.equals("호텔")) {
			shopCode = 102;
		} else if (code.equals("휘트니스")) {
			shopCode = 103;
		}
		
		BoardNoticeDTO dto = new BoardNoticeDTO();
		
		dto.setShopCode(shopCode);
		dto.setMemId(req.getParameter("memId"));
		dto.setSubject(req.getParameter("subject"));
		dto.setNotiPasswd(req.getParameter("passwd"));
		dto.setContent(req.getParameter("content"));
		
		dto.setNotiNum(Integer.parseInt(req.getParameter("num")));
		dto.setRef(Integer.parseInt(req.getParameter("ref")));
		dto.setRef_step(Integer.parseInt(req.getParameter("ref_step")));
		dto.setRef_level(Integer.parseInt(req.getParameter("ref_level")));
		
		dto.setNoti_date(new Timestamp(System.currentTimeMillis()));
		dto.setIp(req.getRemoteAddr());
		
		if(req.getParameter("important") != null){
			dto.setImportant(req.getParameter("important"));
		} else {
			dto.setImportant("0");
		}
		
		System.out.println("num1 : " + Integer.parseInt(req.getParameter("num")));
		
		int cnt = dao.NoticeInsert(dto);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("shopCode", shopCode);
		
		return "/main/board/noticeWritePro";
	}

}
