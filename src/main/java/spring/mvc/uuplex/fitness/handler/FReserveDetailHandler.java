package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassDAO;
import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FClassDTO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FReserveDetailHandler implements FCommandHandler{
	
	@Autowired
	FClassDAO  cDao;
	@Autowired
	FProgramDAO  pDao;
	@Autowired
	FTeacherDAO  tDao;
	
	
	@Override
	public String process(Model model) {
		
		FClassDTO cDto = null;
		FProgramDTO pDto = null;
		FTeacherDTO tDto = null;
		
		String viewPage = "/fitness/user/reserve_detail";
		
		int cid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			cid = Integer.parseInt(req.getParameter("cid"));
			
			cDto = cDao.classDetail(cid);
			pDto = pDao.programDetail(cDto.getPid());
			tDto = tDao.tdetail(pDto.getTid());
			
			model.addAttribute("classInfo", cDto);
			model.addAttribute("program", pDto);
			model.addAttribute("teacher", tDto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
