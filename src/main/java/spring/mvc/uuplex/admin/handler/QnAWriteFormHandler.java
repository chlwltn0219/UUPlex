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
		
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		int num = 0;
		int ref = 1;		//�׷�ȭ ���̵�
		int ref_step = 0;	//�ۼ���
		int ref_level = 0;	//�۷���
		
		System.out.println("num : " + req.getParameter("num"));
		
		// �亯���� ���
		if(req.getParameter("num") != null) {
			num = Integer.parseInt(req.getParameter("num"));
			ref = Integer.parseInt(req.getParameter("ref"));
			ref_step = Integer.parseInt(req.getParameter("ref_step"));
			ref_level = Integer.parseInt(req.getParameter("ref_level"));
		}
		
		model.addAttribute("shopCode", shopCode);
		model.addAttribute("num", num);
		model.addAttribute("ref", ref);
		model.addAttribute("ref_step", ref_step);
		model.addAttribute("ref_level", ref_level);
		
		return "/main/board/qnaWrite";
	}

}
