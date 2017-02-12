package spring.mvc.uuplex.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSession sqlsession;	//servlet-context.xml에 등록 (컨넥션풀 접근, Mapper위치 등록)
	
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

	
	// 예약조회

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
	public ArrayList<MtestDTO> reservlist_m_id_date(Map<String, Object> daoMap) {
		ArrayList<MtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_m_id_date(daoMap);
		
		return dtos;
	}


	@Override
	public ArrayList<HtestDTO> reservlist_h_id_date(Map<String, Object> daoMap) {
		ArrayList<HtestDTO> dtos = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dtos = dao.reservlist_h_id_date(daoMap);
		
		return dtos;
	}


	// 회원통계
	
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
	public int gradeCount1() {
		int gradeCount1 = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		gradeCount1 = dao.gradeCount1();
		
		return gradeCount1;
	}


	@Override
	public int gradeCount2() {
		int gradeCount2 = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		gradeCount2 = dao.gradeCount2();
		
		return gradeCount2;
	}


	@Override
	public int gradeCount3() {
		int gradeCount3 = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		gradeCount3 = dao.gradeCount3();
		
		return gradeCount3;
	}


	@Override
	public int gradeCount4() {
		int gradeCount4 = 0;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		gradeCount4 = dao.gradeCount3();
		
		return gradeCount4;
	}


}
