package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;

@Service("memberChartHandler")
public class MemberChartHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int memGenderWoman = dao.memberGenderWoman();
		int memGenderMan = dao.memberGenderMan();
		int gradeCount1 = dao.gradeCount1();
		int gradeCount2 = dao.gradeCount2();
		int gradeCount3 = dao.gradeCount3();
		int gradeCount4 = dao.gradeCount4();

		model.addAttribute("memGenderWoman", memGenderWoman);
		model.addAttribute("memGenderMan", memGenderMan);
		model.addAttribute("gradeCount1", gradeCount1);
		model.addAttribute("gradeCount2", gradeCount2);
		model.addAttribute("gradeCount3", gradeCount3);
		model.addAttribute("gradeCount4", gradeCount4);
		
		return "/main/admin/memberChart";
	}

}
