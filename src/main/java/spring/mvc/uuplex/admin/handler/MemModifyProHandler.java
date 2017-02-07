package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.MemberDTO;

@Service("memModifyProHandler")
public class MemModifyProHandler implements CommandHandler {

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		MemberDTO dto = new MemberDTO();
		
		dto.setMemId(req.getParameter("memId"));
		dto.setPasswd(req.getParameter("passwd"));
		dto.setName(req.getParameter("name"));
	
		String address = "";
		String roadAddress = req.getParameter("roadAddress");
		String jibunAddress = req.getParameter("jibunAddress");
		
		address = roadAddress + " " + jibunAddress;
		
		dto.setAddress(address);
		
		String phone="";
		String tel1 = req.getParameter("tel1");
		String tel2 = req.getParameter("tel2");
		String tel3 = req.getParameter("tel3");
		
		if(!tel1.equals("") && !tel2.equals("") && !tel3.equals("")) {
			phone = tel1 + "-" + tel2 + "-" + tel3;
			dto.setPhone(phone);
		}
		
		
		dto.setEmail(req.getParameter("email"));
		
		int cnt = dao.memUpdate(dto);
		
		
		model.addAttribute("cnt", cnt);
		
		return "/main/mainHeader/memModifyPro";
	}

}
