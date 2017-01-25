package spring.mvc.uuplex.admin.dao;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.admin.dto.MemberDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSession sqlsession;	//servlet-context.xml에 등록 (컨넥션풀 접근, Mapper위치 등록)
	
	DataSource dataSource;

	
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


}
