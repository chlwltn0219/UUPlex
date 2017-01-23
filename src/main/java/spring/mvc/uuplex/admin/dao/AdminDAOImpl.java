package spring.mvc.uuplex.admin.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.MemberDTO;

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
	public int pwdCheck(Map<String, Object> daoMap) {
		int cnt = 0;
		
		int idCheck = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.idCheck", daoMap.get("memId"));
		
		if(idCheck == 1) {
			int pwdCheck = this.sqlsession.selectOne("spring.mvc.uuplex.admin.dao.AdminDAO.pwdCheck", daoMap);
		
			if(pwdCheck == 1) {
				cnt = 1;
			} else {
				cnt = -1;
			}
			
		} else {
			cnt = 0;
		}

		return cnt;
	}


}
