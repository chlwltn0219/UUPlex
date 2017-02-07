package spring.mvc.uuplex.hotel.dto;

import java.sql.Timestamp;

public class ReservDTO {
	private int reservNum;
	private int roomNum;
	private int id;
	private String email;
	private int shopCode;
	private String roomName;
	private Timestamp reservDay;
	private Timestamp checkIn;
	private Timestamp checkOut;
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
	private Timestamp cardEndM;
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
	
	public Timestamp getCardEndM() {
		return cardEndM;
	}
	public void setCardEndM(Timestamp cardEndM) {
		this.cardEndM = cardEndM;
	}
	
	public int getTotCharge() {
		return totCharge;
	}
	public void setTotCharge(int totCharge) {
		this.totCharge = totCharge;
	}
	
}
