package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.GenderDTO;

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
		
		ArrayList<GenderDTO> gradeCount = dao.gradeCount();
	

		model.addAttribute("memGenderWoman", memGenderWoman);
		model.addAttribute("memGenderMan", memGenderMan);
		model.addAttribute("gradeCount", gradeCount);

		
		return "/main/admin/memberChart";
	}

}
