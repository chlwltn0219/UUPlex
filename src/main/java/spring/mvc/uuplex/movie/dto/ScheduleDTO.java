package spring.mvc.uuplex.movie.dto;

import java.sql.Timestamp;
import java.util.Date;

public class ScheduleDTO {
	
	Timestamp showtime;   
	Date endtime; 
	int movie_num; 
	int theater_num;
	int runtime;
	String title1;
	int time;
	int day;
	int schedule_num; 
	String MPAARating;
	int seatcnt;
	String poster;
	int ed;
	
	
	
	public int getEd() {
		return ed;
	}
	public void setEd(int ed) {
		this.ed = ed;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getSeatcnt() {
		return seatcnt;
	}
	
	public void setSeatcnt(int seatcnt) {
		this.seatcnt = seatcnt;
	}
	public String getMPAARating() {
		return MPAARating;
	}
	public void setMPAARating(String mPAARating) {
		MPAARating = mPAARating;
	}
	
	public int getSchedule_num() {
		return schedule_num;
	}
	public void setSchedule_num(int schedule_num) {
		this.schedule_num = schedule_num;
	}
	public Timestamp getShowtime() {
		return showtime;
	}
	public void setShowtime(Timestamp showtime) {
		this.showtime = showtime;
		
		int between= showtime.getDay()-new Date().getDay();
		if(between<0){
			between+=7;
		}
		this.day =between*141+5;
		
		this.time=(showtime.getHours()-9)*60+showtime.getMinutes();
	}
	public int getMovie_num() {
		return movie_num;
	}
	public void setMovie_num(int movie_num) {
		this.movie_num = movie_num;
	}
	public int getTheater_num() {
		return theater_num;
	}
	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}
	public int getRuntime() {
		return runtime;
	}
	public void setRuntime(int runtime) {
		this.runtime = runtime;
		
		endtime = new Date(showtime.getTime() + 1000*60*runtime);
		setEndtime(endtime);
		
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public int getTime() {
		return time;
	}
	public int getDay() {
		return day;
	}		
	
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	
	public Date getEndtime() {
		return endtime;
	}
	
}
