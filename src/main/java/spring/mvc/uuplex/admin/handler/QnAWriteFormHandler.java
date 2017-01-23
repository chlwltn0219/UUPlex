package spring.mvc.uuplex.admin.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service("qnAWriteFormHandler")
public class QnAWriteFormHandler implements CommandHandler {

	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int num = 0;
		int ref = 1;		//그룹화 아이디
		int ref_step = 0;	//글순서
		int ref_level = 0;	//글레벨
		
		model.addAttribute("num", num);
		model.addAttribute("ref", ref);
		model.addAttribute("ref_step", ref_step);
		model.addAttribute("ref_level", ref_level);
		
		return "/main/board/qnaWrite";
	}

}
