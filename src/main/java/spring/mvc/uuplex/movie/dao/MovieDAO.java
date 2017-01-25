package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto); 	//영화정보추가
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
<<<<<<< HEAD
	public int addReview(ReviewDTO dto);		//리뷰추가
=======
	public MovieInfoDTO movieDetail(int mnum);
>>>>>>> 8149e23b0760a8022850150552777270f27ff254
}
