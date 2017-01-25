package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto); 	//��ȭ�����߰�
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
	public int addReview(ReviewDTO dto);		//�����߰�
}
