package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.TheaterDTO;

public interface TheaterDAO {

	public int addTheater(TheaterDTO dto);
	public List<TheaterDTO> TheatersList();		//�����߰�
	public TheaterDTO TheaterDetail(int THEATER_NUM);
	public int TheatersCount();
}
