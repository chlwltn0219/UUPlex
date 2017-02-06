package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.MemberDTO;

@Service("memberListHandler")
public class MemberListHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		ArrayList<MemberDTO> dtos = null;
		
		String grade = req.getParameter("grade");
		
		if(grade.equals("��ü")){
			dtos = dao.memberList();
		} else if(grade.equals("�Ϲ�ȸ��")) {
			dtos = dao.memberListSub(grade);
		} else if(grade.equals("Greenȸ��")) {
			dtos = dao.memberListSub(grade);
		} else if(grade.equals("Goldȸ��")) {
			dtos = dao.memberListSub(grade);
		} else if(grade.equals("Vipȸ��")) {
			dtos = dao.memberListSub(grade);
		}
	
		model.addAttribute("dtos", dtos);
		model.addAttribute("grade", grade);
		
		return "/main/admin/memberList";
	}

}
