package spring.mvc.uuplex.admin.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;

@Service("loginProHandler")
public class LoginProHandler implements CommandHandler{

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = req.getParameter("memId");
		String passwd = req.getParameter("passwd");
		
		Map<String, Object> daoMap = new HashMap<String, Object>();
		daoMap.put("memId", memId);
		daoMap.put("passwd", passwd);
		
		int cnt = dao.pwdCheck(daoMap);
		System.out.println(cnt);
		
		if(cnt == 1) {
			req.getSession().setAttribute("id", memId);
			model.addAttribute("cnt", cnt);
			return "/main/login/loginPro";
			
		} else {
			model.addAttribute("cnt", cnt);
			return "/main/login/loginForm";
		}
		
	}

}
