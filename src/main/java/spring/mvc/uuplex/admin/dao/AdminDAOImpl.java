package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.CalculateDTO;
import spring.mvc.uuplex.admin.dto.GenderDTO;
import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSession sqlsession;	//servlet-context.xml�� ��� (���ؼ�Ǯ ����, Mapper��ġ ���)
	
	@Override
	public int idCheck(String memId) {
		int cnt = 0;
		
		cnt = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.idCheck", memId);
		return cnt;
	}
	
	
	@Override
	public int insert(MemberDTO dto) {
		int cnt = 0;
		
		cnt = this.sqlsession.insert("spring.mvc.uuplex.admin.dao.AdminDAO.insert", dto);
		return cnt;
	}
	
	
	@Override
	public int idCode(String memId) {
		int idCode = 0;
		
		idCode = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.idCode", memId);
		
		return idCode;
	}


	@Override
	public Map<String, Object> pwdCheck(Map<String, Object> daoMap) {
		
		int cnt = 0;
		Map<String, Object> codeMap = new HashMap<String, Object>();
		
		int idCheck = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.idCheck", daoMap.get("memId"));
		
		if(idCheck == 1) {
			int idCode = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.idCode", daoMap.get("memId"));
			int pwdCheck = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.pwdCheck", daoMap);
		
			if(pwdCheck == 1) {
				cnt = 1;
				codeMap.put("cnt", cnt);
				codeMap.put("idCode", idCode);
				
			} else {
				cnt = -1;
				codeMap.put("cnt", cnt);
				codeMap.put("idCode", idCode);
			}
			
		} else {
			cnt = 0;
			codeMap.put("cnt", cnt);
		}

		return codeMap;
	}


	@Override
	public ArrayList<MemberDTO> memberList() {
		
		ArrayList<MemberDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.memberList();
		
		return dtos;
	}
	
	
	@Override
	public ArrayList<MemberDTO> memberListSub(String grade) {
		
		ArrayList<MemberDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.memberListSub(grade);
		
		return dtos;
	}


	@Override
	public MemberDTO memberView(String memId) {
		
		MemberDTO dto = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dto = dao.memberView(memId);
		
		return dto;
	}


	@Override
	public int upgrade(Map<String, Object> daoMap) {
		
		int cnt = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		cnt = dao.upgrade(daoMap);
		
		return cnt;	
	}


	@Override
	public int memUpdate(MemberDTO dto) {
		
		int cnt = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		cnt = dao.memUpdate(dto);
		
		return cnt;	
		
	}


	@Override
	public int deletepwdCheck(Map<String, Object> daoMap) {
		
		int cnt = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		cnt = dao.deletepwdCheck(daoMap);
		
		return cnt;	
	}


	@Override
	public int deleteMember(String memId) {
		
		int cnt = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		cnt = dao.deleteMember(memId);
		
		return cnt;
	}

	
	// ������ȸ

	@Override
	public ArrayList<MtestDTO> reservlist_movie() {

		ArrayList<MtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_movie();
		
		return dtos;
	}
	
	
	@Override
	public ArrayList<HtestDTO> reservlist_hotel() {
		ArrayList<HtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_hotel();
		
		return dtos;
	}
	
	
	@Override
	public ArrayList<FStatementDTO> reservlist_fitness() {
		ArrayList<FStatementDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_fitness();
		
		return dtos;
	}


	@Override
	public ArrayList<MtestDTO> reservlist_m_date(Map<String, Object> daoMap) {
		ArrayList<MtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_m_date(daoMap);
		
		return dtos;
	}


	@Override
	public ArrayList<HtestDTO> reservlist_h_date(Map<String, Object> daoMap) {
		ArrayList<HtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_h_date(daoMap);
		
		return dtos;
	}
	
	
	@Override
	public ArrayList<FStatementDTO> reservlist_f_date(Map<String, Object> daoMap) {
		ArrayList<FStatementDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_f_date(daoMap);
		
		return dtos;
	}


	@Override
	public ArrayList<MtestDTO> reservlist_m_id(String memId) {
		ArrayList<MtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_m_id(memId);
		
		return dtos;
	}


	@Override
	public ArrayList<HtestDTO> reservlist_h_id(String memId) {
		ArrayList<HtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_h_id(memId);
		
		return dtos;
	}
	
	
	@Override
	public ArrayList<FStatementDTO> reservlist_f_id(String memId) {
		ArrayList<FStatementDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_f_id(memId);
		
		return dtos;
	}


	@Override
	public ArrayList<MtestDTO> reservlist_m_id_date(Map<String, Object> daoMap) {
		ArrayList<MtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_m_id_date(daoMap);
		
		return dtos;
	}


	@Override
	public ArrayList<FStatementDTO> reservlist_f_id_date(Map<String, Object> daoMap) {
		ArrayList<FStatementDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_f_id_date(daoMap);
		
		return dtos;
	}

	
	@Override
	public ArrayList<HtestDTO> reservlist_h_id_date(Map<String, Object> daoMap) {
		ArrayList<HtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_h_id_date(daoMap);
		
		return dtos;
	}

	// ȸ�����
	
	@Override
	public int memberGenderWoman() {
		int genderCount = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		genderCount = dao.memberGenderWoman();
		
		return genderCount;
	}


	@Override
	public int memberGenderMan() {
		int genderCount = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		genderCount = dao.memberGenderMan();
		
		return genderCount;
	}


	@Override
	public int m_DayCalculate() {
		int movieDayCal = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		movieDayCal = dao.m_DayCalculate();
		
		return movieDayCal;
	}


	@Override
	public int h_DayCalculate() {
		int hotelDayCal = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		hotelDayCal = dao.h_DayCalculate();
		
		return hotelDayCal;
	}


	@Override
	public int f_DayCalculate() {
		int fitnessDayCal = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		fitnessDayCal = dao.f_DayCalculate();
		
		return fitnessDayCal;
	}


	@Override
	public String todayDate() {
		String todayDate="";
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		todayDate = dao.todayDate();
		
		return todayDate;
	}


	@Override
	public ArrayList<CalculateDTO> monthCalculate() {
		ArrayList<CalculateDTO> monthCal = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		monthCal = dao.monthCalculate();
		
		return monthCal;
	}


	@Override
	public ArrayList<GenderDTO> gradeCount() {
		ArrayList<GenderDTO> gradeCount = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		gradeCount = dao.gradeCount();
		
		return gradeCount;
	}



}
