package spring.mvc.uuplex.movie.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.AgeRangeDTO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.RankingDTO;
import spring.mvc.uuplex.movie.dto.SalesDTO;
import spring.mvc.uuplex.movie.dto.ScreenQuotaDTO;

public interface ManagerDAO {
	
	public List<RankingDTO> getRanking();							//예매율 순위 전체 가져오기
	
	public int reserveCnt();										//전체 예매 수량
	
	public List<SalesDTO> getSales(Map<String, Timestamp> rangeMap); //월별 매출 구하기
	
	public List<ScreenQuotaDTO> getScreenQuota(String year);		//스크린 쿼터
	
	public List<MovieInfoDTO> getTopFive();							//예매율 top5 영화 상세정보

	public List<MovieInfoDTO> getLatestMovie();					   //최신 개봉작 리스트
	
	public List<AgeRangeDTO> ageRange(int movie_num);			//연령별 예매수
	
	public int womanCnt(int movie_num);							//성별 예매수
	
	public int getReservIdCnt(int movie_num);					//영화별 예매 내역 수(티켓수량 고려안함)
}

