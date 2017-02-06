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
		
		int pageSize = 5;	   //���������� ����� �� ����
		int pageBlock = 3;	   //����� ������ ����
		
		int cnt = 0;		   //�� ����
		int start = 0;		   //���� ������ ����: rownum
		int end = 0;		   //���� ������ ����ȣ: rownum
		int number = 0;		   //����� �� ��ȣ
		String pageNum = null; //������ ��ȣ
		int currentPage = 0;   //���� ������
		
		int pageCount = 0;	   //������ ����
		int startPage = 0;	   //���� ������
		int endPage = 0;	   //������ ������
		
		
		// �𵨷κ��� Map�� �����´�.. Map�� key�� �����ؼ� request�� ���� �������� ����
		Map<String, Object> map = model.asMap();
		// Map���� ������ ���� req ������ ��´�.
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int shopCode = Integer.parseInt(req.getParameter("shopCode"));
		
		cnt = dao.getCount();  
		
		if(shopCode == 101 || shopCode == 102 || shopCode == 103) {
			cnt = dao.getSubCount(shopCode);
		}
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";	// ù�������� 1�������� ����
		}
		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		
		start = (currentPage - 1) * pageSize + 1;	//(5 - 1) * 10 + 1;
		end = start + pageSize - 1;	//41 + 10 - 1 = 50;
		
		if(end > cnt) end = cnt;
		// �۹�ȣ
		number = cnt - (currentPage - 1) * pageSize;
		
		if(cnt > 0){
			// �۸�� ��������
			
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
