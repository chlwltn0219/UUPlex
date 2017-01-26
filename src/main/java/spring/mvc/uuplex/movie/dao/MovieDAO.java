package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto); 	//영화정보추가
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
	public int addReview(ReviewDTO dto);		//리뷰추가
	public MovieInfoDTO movieDetail(int mnum);
<<<<<<< HEAD
=======
	public int moviesCount();
	public List<MovieInfoDTO> manageMoviesList(Map<String, Integer> rangeMap);
>>>>>>> 0db1decd60e9febb3bca9a0a4041e599c576d2cd
}
