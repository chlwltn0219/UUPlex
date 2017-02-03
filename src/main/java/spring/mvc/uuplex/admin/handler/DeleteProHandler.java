package spring.mvc.uuplex.admin.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;

@Service("deleteProHandler")
public class DeleteProHandler implements CommandHandler{

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = (String) req.getSession().getAttribute("id");
		String passwd = req.getParameter("passwd");
		
		Map<String, Object> daoMap = new HashMap<String, Object>();
		daoMap.put("memId", memId);
		daoMap.put("passwd", passwd);
		
		System.out.println("memId : " + memId);
		
		int cnt = dao.deletepwdCheck(daoMap);
		
		int delcnt = 0;
		
		if(cnt == 1) {
			delcnt = dao.deleteMember(memId); 
			req.getSession().setAttribute("id", null);
			req.getSession().setAttribute("idCode", null);
		} 
		
		System.out.println("cnt : " + cnt);
		System.out.println("delcnt : " + delcnt);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("delcnt", delcnt);
		
		return "/main/mainHeader/deletePro";
		
	}

}
