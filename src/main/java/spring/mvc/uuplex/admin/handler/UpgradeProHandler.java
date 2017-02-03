package spring.mvc.uuplex.admin.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;

@Service("upgradeProHandler")
public class UpgradeProHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = req.getParameter("memId");
		String grade = req.getParameter("grade");
		
		Map<String, Object> daoMap = new HashMap<String, Object>();
		daoMap.put("memId", memId);
		daoMap.put("grade", grade);
		
		int cnt = dao.upgrade(daoMap);
		
		System.out.println("id : " + memId);
		System.out.println("grade : " + grade);
		
		
		model.addAttribute("cnt", cnt);
		
		return "/main/admin/upgradePro";
	}

}
