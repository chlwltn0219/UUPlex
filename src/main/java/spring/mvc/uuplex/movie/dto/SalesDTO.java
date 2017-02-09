package spring.mvc.uuplex.movie.dto;

import java.sql.Date;

public class SalesDTO {

	Date year_month_day;
	int sales;
	String year_month;
	
	
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public Date getYear_month_day() {
		return year_month_day;
	}
	public void setYear_month_day(Date year_month_day) {
		this.year_month_day = year_month_day;
	}
	public String getYear_month() {
		return year_month;
	}
	public void setYear_month(String year_month) {
		this.year_month = year_month;
	}
	
	
}
