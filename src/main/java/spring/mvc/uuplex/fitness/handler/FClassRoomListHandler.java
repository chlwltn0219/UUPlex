package spring.mvc.uuplex.fitness.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class FClassRoomListHandler implements FCommandHandler{

	@Autowired
	FClassroomDAO dao;
	Pager pager = Pager.getInstance();
	
	@Override
	public String process(Model model) {
		
		int start = 0;
		int end = 0;
		
		int nowPage = 1;
		int total = 0;
		
		List<FClassroomDTO> dtos = null;
		
		String viewPage = "fitness/manage/classroom_list";
		
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

		total = dao.classroomCount();
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
			
			dtos = dao.list(rangeMap); //����Ʈ dao���� �ҷ�����
			
			model.addAttribute("dtos", dtos); //�����ִ°�, �׷� ���� �ۿ��� �� �� ����
			//---------------------------�� �Խñ� ����Ʈ ����
			//---------------------------�� ������ ���� ����
			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());
			
			model.addAttribute("prev", pager.getPrev());
			model.addAttribute("next", pager.getNext());
		}
		
		
			
		/*System.out.println(pager.getStartContent() + ", " + pager.getEndContent());
		
		list = dao.list(rangeMap)(pager.getStartContent(), pager.getEndContent());
		
		model.addAttribute("list", list);*/
		

		return viewPage;
	}

}
