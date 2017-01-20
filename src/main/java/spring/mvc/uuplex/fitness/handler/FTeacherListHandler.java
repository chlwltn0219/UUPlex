package spring.mvc.uuplex.fitness.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;
import spring.mvc.uuplex.util.Pager;


@Service
public class FTeacherListHandler implements FCommandHandler {

	@Autowired
	FTeacherDAO dao;
	Pager pager = Pager.getInstance();
	
	@Override
	public String process(Model model) {
		
		int start = 0;
		int end = 0;
		
		int nowPage = 1;
		int total = 0;
		
		List<FTeacherDTO> dtos = null;
		
		String viewPage = "fitness/manage/teacher_list";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		if(req.getParameter("page") != null) {
			try{
				nowPage = Integer.parseInt(req.getParameter("page"));
			}catch(NumberFormatException e) {
				e.printStackTrace();
				nowPage = 1;
			}
			
		}else {
			nowPage = 1;
		}

		total = dao.teacherCount();
		System.out.println("Total : " + total);	

		pager.setDisplayContentCnt(15);
		pager.setDisplayPageCnt(10);
		pager.calcPage(total, nowPage); 
		
		start = pager.getStartContent();
		end = pager.getEndContent();
		
		if(total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", start);
			rangeMap.put("end", end);
			
			dtos = dao.list(rangeMap); //리스트 dao에서 불러오기
			
			model.addAttribute("dtos", dtos); //보내주는거, 그럼 이제 밖에서 쓸 수 있음
			//---------------------------↑ 게시글 리스트 관련
			//---------------------------↓ 페이저 생성 관련
			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());
			
			model.addAttribute("prev", pager.isPrev());
			model.addAttribute("next", pager.isNext());
		}
		
		
			
		/*System.out.println(pager.getStartContent() + ", " + pager.getEndContent());
		
		list = dao.list(rangeMap)(pager.getStartContent(), pager.getEndContent());
		
		model.addAttribute("list", list);*/
		
		return viewPage;
	}

}
