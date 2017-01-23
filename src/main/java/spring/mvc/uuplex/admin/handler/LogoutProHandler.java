package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service("logoutProHandler")
public class LogoutProHandler implements CommandHandler {

	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		req.getSession().setAttribute("id", null);
		
		return "/main/login/logout";
	}

}
