package spring.mvc.uuplex.hotel.dto;

<<<<<<< HEAD
import java.util.Date;
=======
import java.sql.Timestamp;
>>>>>>> origin/master

public class ReservDTO {
	private int reservNum;
	private int roomNum;
	private int id;
	private String email;
	private int shopCode;
	private String roomName;
<<<<<<< HEAD
	private String reservDay;
	private String checkIn;
	private String checkOut;
=======
	private Timestamp reservDay;
	private Timestamp checkIn;
	private Timestamp checkOut;
>>>>>>> origin/master
	private int day;
	private int capacity;
	private String extraBed;
	private int extraBedcnt;
	private String laundry;
	private String breakfast;
	private String firstName;
	private String lastName;
	private String country;
	private String card;
	private String cardNum;
<<<<<<< HEAD
	private String cardEndM;
=======
	private Timestamp cardEndM;
>>>>>>> origin/master
	private int totCharge;
	
	
	public int getReservNum() {
		return reservNum;
	}
	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}
	
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public int getShopCode() {
		return shopCode;
	}
	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}
	
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

<<<<<<< HEAD
	public String getReservDay() {
		return reservDay;
	}
	public void setReservDay(String reservDay) {
		this.reservDay = reservDay;
	}
	
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
=======
	public Timestamp getReservDay() {
		return reservDay;
	}
	public void setReservDay(Timestamp reservDay) {
		this.reservDay = reservDay;
	}
	
	public Timestamp getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Timestamp checkIn) {
		this.checkIn = checkIn;
	}
	
	public Timestamp getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Timestamp checkOut) {
>>>>>>> origin/master
		this.checkOut = checkOut;
	}
	
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public int getExtraBedcnt() {
		return extraBedcnt;
	}
	public void setExtraBedcnt(int extraBedcnt) {
		this.extraBedcnt = extraBedcnt;
	}
	
	public String getExtraBed() {
		return extraBed;
	}
	public void setExtraBed(String extraBed) {
		this.extraBed = extraBed;
	}
	
	public String getLaundry() {
		return laundry;
	}
	public void setLaundry(String laundry) {
		this.laundry = laundry;
	}
	
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	
<<<<<<< HEAD
	public String getCardEndM() {
		return cardEndM;
	}
	public void setCardEndM(String cardEndM) {
=======
	public Timestamp getCardEndM() {
		return cardEndM;
	}
	public void setCardEndM(Timestamp cardEndM) {
>>>>>>> origin/master
		this.cardEndM = cardEndM;
	}
	
	public int getTotCharge() {
		return totCharge;
	}
	public void setTotCharge(int totCharge) {
		this.totCharge = totCharge;
	}
	
}
