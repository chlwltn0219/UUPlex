package spring.mvc.uuplex.fitness.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FClassInputFormHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO sDao;
	@Autowired
	FProgramDAO pDao;
	@Autowired
	FTeacherDAO tDao;
	@Autowired
	FClassroomDAO crDao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/manage/class_input";
		
		List<FProgramDTO> pList = null;
		List<FSportsDTO> sList = null;
		List<FClassroomDTO> crList = null;
		List<FTeacherDTO> tList = null;
		Map<Integer, FTeacherDTO> tMap = new HashMap<Integer, FTeacherDTO>();
		Map<Integer, List<FProgramDTO>> pMap = new HashMap<Integer, List<FProgramDTO>>();
		
		
		pList = pDao.programActivatedList();
		sList = sDao.sportsActivatedList();
		crList = crDao.activatedList();
		tList = tDao.listAll();
		
		for (FTeacherDTO tDto : tList) {
			tMap.put(tDto.getTid(), tDto);
		}
		
		
		for (FSportsDTO sDto : sList) {
			List<FProgramDTO> spList = new ArrayList<FProgramDTO>();
			for (FProgramDTO pDto : pList) {
				if(pDto.getSid() == sDto.getSid()) {
					spList.add(pDto);
				}
			}
			pMap.put(sDto.getSid(), spList);
		}
		
		model.addAttribute("program", pMap);
		model.addAttribute("sports", sList);
		model.addAttribute("classroom", crList);
		model.addAttribute("teacher", tMap);
		
		return viewPage;
	}

}

