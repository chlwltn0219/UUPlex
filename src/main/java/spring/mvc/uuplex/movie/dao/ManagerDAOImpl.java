package spring.mvc.uuplex.movie.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.AgeRangeDTO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.RankingDTO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;
import spring.mvc.uuplex.movie.dto.SalesDTO;
import spring.mvc.uuplex.movie.dto.ScreenQuotaDTO;

@Repository 
public class ManagerDAOImpl implements ManagerDAO{

	@Autowired
	private SqlSession sqlSession; 
	
	@Override
	public List<RankingDTO> getRanking() {
		List<RankingDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.getRanking();
		return list;
	}

	@Override
	public int reserveCnt() {
		int cnt = 0;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		cnt = dao.reserveCnt();
		return cnt;
	}

	@Override
	public List<SalesDTO> getSales(Map<String, Timestamp> rangeMap) {
		List<SalesDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.getSales(rangeMap);
		return list;
	}

	@Override
	public List<ScreenQuotaDTO> getScreenQuota(String year) {
		List<ScreenQuotaDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.getScreenQuota(year);
		
		return list;
	}

	@Override
	public List<MovieInfoDTO> getTopFive() {
		List<MovieInfoDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.getTopFive();
		return list;
	}

	@Override
	public List<MovieInfoDTO> getLatestMovie() {
		List<MovieInfoDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.getLatestMovie();
		return list;
	}

	@Override
	public List<AgeRangeDTO> ageRange(int movie_num) {
		List<AgeRangeDTO> dtos = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		dtos = dao.ageRange(movie_num);
		return dtos; 
	}

	@Override
	public int womanCnt(int movie_num) {
		int cnt = 0;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		cnt = dao.womanCnt(movie_num);
		return cnt;
	}

	@Override
	public int getReservIdCnt(int movie_num) {
		int cnt = 0;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		cnt = dao.getReservIdCnt(movie_num);
		return cnt;
	}

	@Override
	public List<ReserveDTO> searchAll(Map<String, Object> daoMap) {
		List<ReserveDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.searchAll(daoMap);
		return list;
	}

	@Override
	public List<ReserveDTO> searchTitle(Map<String, Object> daoMap) {
		List<ReserveDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.searchTitle(daoMap);
		return list;
	}

	@Override
	public List<ReserveDTO> searchDirector(Map<String, Object> daoMap) {
		List<ReserveDTO> list = null;
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		list = dao.searchDirector(daoMap);
		return list;
	}

	
	

}
