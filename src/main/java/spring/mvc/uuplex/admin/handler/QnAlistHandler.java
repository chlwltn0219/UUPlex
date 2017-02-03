package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;
import spring.mvc.uuplex.admin.dto.BoardDTO;

@Service("qnAlistHandler")
public class QnAlistHandler implements CommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		
		int pageSize = 5;	   //한페이지당 출력할 글 개수
		int pageBlock = 3;	   //출력할 페이지 개수
		
		int cnt = 0;		   //글 개수
		int start = 0;		   //현재 페이지 시작: rownum
		int end = 0;		   //현재 페이지 끝번호: rownum
		int number = 0;		   //출력할 글 번호
		String pageNum = null; //페이지 번호
		int currentPage = 0;   //현재 페이지
		
		int pageCount = 0;	   //페이지 개수
		int startPage = 0;	   //시작 페이지
		int endPage = 0;	   //마지막 페이지
		
		
		// 모델로부터 Map을 가져온다.. Map의 key로 접근해서 request의 값을 가져오기 위함
		Map<String, Object> map = model.asMap();
		// Map에서 가져온 값을 req 변수에 담는다.
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		cnt = dao.getCount();  
		
		if(shopCode == 101 || shopCode == 102 || shopCode == 103) {
			cnt = dao.getSubCount(shopCode);
		}
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";	// 첫페이지를 1페이지로 설정
		}
		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		
		start = (currentPage - 1) * pageSize + 1;	//(5 - 1) * 10 + 1;
		end = start + pageSize - 1;	//41 + 10 - 1 = 50;
		
		if(end > cnt) end = cnt;
		// 글번호
		number = cnt - (currentPage - 1) * pageSize;
		
		if(cnt > 0){
			// 글목록 가져오기
			
			if(shopCode==100) {
				Map<String, Integer> daoMap = new HashMap<String, Integer>();
				daoMap.put("start", start);
				daoMap.put("end", end);
				
				ArrayList<BoardDTO> dtos = dao.getArticles(daoMap);
				model.addAttribute("dtos", dtos);
				model.addAttribute("shopCode", shopCode);
			}
			
			if(shopCode!=100) {
				
				Map<String, Integer> daoMap = new HashMap<String, Integer>();
				daoMap.put("start", start);
				daoMap.put("end", end);
				daoMap.put("shopCode", shopCode);
				
				ArrayList<BoardDTO> dtos = dao.getArticlesSub(daoMap);
				model.addAttribute("dtos", dtos);
				model.addAttribute("shopCode", shopCode);
			}
			
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1; //(5 / 3) * 3 + 1 = 4
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		endPage = startPage + pageBlock -1; //4 + 3 - 1 = 6;
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum);
		
		if(cnt > 0) {
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("pageCount", pageCount);
			model.addAttribute("pageBlock", pageBlock);
		}
		
		model.addAttribute("shopCode", shopCode);
		
		return "/main/board/qna";
	}

}
