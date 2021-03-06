package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.ReserveDTO;

public interface ReserveDAO {

	public int addReserve(ReserveDTO rdto);
	public List<ReserveDTO> reservations(int schedule_num);
	public List<ReserveDTO> getReservList(String id);
	public int reservDelete(int reserve_num);
}
