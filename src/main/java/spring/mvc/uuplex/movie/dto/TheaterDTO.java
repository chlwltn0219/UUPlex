package spring.mvc.uuplex.movie.dto;

public class TheaterDTO {
	
	int theater_num;
	int shopcode;
	int seatCnt;
	String seat_arrange;
	String[] seats;
	
	public int getTheater_num() {
		return theater_num;
	}
	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}
	public int getShopcode() {
		return shopcode;
	}
	public void setShopcode(int shopcode) {
		this.shopcode = shopcode;
	}
	public int getSeatCnt() {
		return seatCnt;
	}
	public void setSeatCnt(int seatCnt) {
		this.seatCnt = seatCnt;
	}
	public String getSeat_arrange() {
		return seat_arrange;
	}
	public void setSeat_arrange(String seat_arrange) {
		this.seat_arrange = seat_arrange;
		this.seats = getSeat_arrange().split("");
	}
	
	public String[] getSeats(){
		return seats;
	}

}
