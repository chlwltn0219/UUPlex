package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto);
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
}
