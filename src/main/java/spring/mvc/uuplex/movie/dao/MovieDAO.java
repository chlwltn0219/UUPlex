package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto); 	//��ȭ�����߰�
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
<<<<<<< HEAD
	public int addReview(ReviewDTO dto);		//�����߰�
=======
	public MovieInfoDTO movieDetail(int mnum);
>>>>>>> 8149e23b0760a8022850150552777270f27ff254
}
