package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnADelProHandler")
public class QnADelProHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int num = Integer.parseInt(req.getParameter("num"));
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		int ref_step = Integer.parseInt(req.getParameter("ref_step"));
		String passwd = req.getParameter("passwd");
		
		int cnt = 0;
		int delCnt = 0;
		String pwChk = dao.pwdChk(num);
		
		System.out.println("step : " + ref_step);
		
		// 답글인 경우
		if(ref_step > 0) {
			
			if(pwChk.equals(passwd)) {
				delCnt = dao.qnaDelAns(num);
				model.addAttribute("shopCode", shopCode);
				model.addAttribute("delCnt", delCnt);
				
				return "/main/board/qnaDelPro";
				
			} else {
				
				cnt = -1;
				
				model.addAttribute("shopCode", shopCode);
				model.addAttribute("num", num);
				model.addAttribute("cnt", cnt);
				
				return "/main/board/qnaDelForm";
			}
			
		// 답글이 아닌경우	
		} else {
			
			if(pwChk.equals(passwd)) {
				delCnt = dao.qnaDel(num);
				model.addAttribute("shopCode", shopCode);
				model.addAttribute("delCnt", delCnt);
				
				return "/main/board/qnaDelPro";
				
			} else {
				
				cnt = -1;
				
				model.addAttribute("shopCode", shopCode);
				model.addAttribute("num", num);
				model.addAttribute("cnt", cnt);
				
				return "/main/board/qnaDelForm";
			}
			
		}
		
	}

}
