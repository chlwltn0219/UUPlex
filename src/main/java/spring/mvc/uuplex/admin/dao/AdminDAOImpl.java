package spring.mvc.uuplex.admin.dao;

<<<<<<< HEAD
import javax.sql.DataSource;
=======
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.MemberDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSession sqlsession;	//servlet-context.xml�� ��� (���ؼ�Ǯ ����, Mapper��ġ ���)
	
<<<<<<< HEAD
	DataSource dataSource;

=======
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	
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
<<<<<<< HEAD

=======
	
	
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
	public MemberDTO memberView(String memId) {
		
		MemberDTO dto = null;
		
		AdminDAO dao = this.sqlsession.getMapper(AdminDAO.class);
		
		dto = dao.memberView(memId);
		
		return dto;
	}
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a

}
