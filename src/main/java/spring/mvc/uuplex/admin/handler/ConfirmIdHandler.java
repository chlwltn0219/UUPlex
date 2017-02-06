package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;

@Service("confirmIdHandler")
public class ConfirmIdHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = req.getParameter("memId");
		
		System.out.println(memId);
		
		int cnt = dao.idCheck(memId);
		
		System.out.println(cnt);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("memId", memId);

		
		return "/main/InputMember/confirmId";
	}

}
