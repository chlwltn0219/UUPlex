package spring.mvc.uuplex.movie.dao;

import java.sql.Timestamp;
import java.util.Calendar;

public class Test {

	public static void main(String[] args) {
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		cal.set(Calendar.DATE, 1);
		
		Calendar cal2 = Calendar.getInstance();
		cal2.add(Calendar.MONTH, -1);
		cal2.set(Calendar.DATE, cal2.getMaximum(Calendar.DAY_OF_MONTH));
		
		System.out.println("c : " + cal.getTime());
		System.out.println("c2 :" + cal2.getTime());
		
		System.out.println("c3 : " + new Timestamp(cal.getTimeInMillis()));
		System.out.println("c4 : " + new Timestamp(cal2.getTimeInMillis()));
		
	}
	
}
