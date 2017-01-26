package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

public interface MovieDAO {

	public int addMovieInfo(MovieInfoDTO dto);
	public MovieInfoDTO getMovieInfo(int num);
	public List<MovieInfoDTO> moviesList();
	public MovieInfoDTO movieDetail(int mnum);
	public int moviesCount();
	public List<MovieInfoDTO> manageMoviesList(Map<String, Integer> rangeMap);
}
