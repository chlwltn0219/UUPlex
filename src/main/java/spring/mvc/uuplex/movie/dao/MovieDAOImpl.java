package spring.mvc.uuplex.movie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Repository //����� ����
public class MovieDAOImpl implements MovieDAO{

	@Autowired 
	private SqlSession sqlSession; //servlet-context.xml�� �ִ°� �ҷ��´�.
	
	//��ȭ�����߰�
	@Override
	public int addMovieInfo(MovieInfoDTO dto) {
		int cnt = 0;
		return 0;
	}

}
