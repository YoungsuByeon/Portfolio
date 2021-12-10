package reservation;

import java.sql.Date;
import java.sql.Timestamp;

public class BookingInfo {
	private int customerNum;
	private String id;
	private String name;
	private String year;
	private String month;
	private String day;
	private String gender;
	private String email;
	private String phone;
	private String roomId;
	private String totalAdult;
	private String totalChild;
	private String checkinDate;
	private String checkoutDate;
	private String stayDate;
	private String totalAmount;
	private Timestamp bookingDate;
	
	public int getCustomerNum() {
		return customerNum;
	}
	public void setCustomerNum(int customerNum) {
		this.customerNum = customerNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getTotalAdult() {
		return totalAdult;
	}
	public void setTotalAdult(String totalAdult) {
		this.totalAdult = totalAdult;
	}
	public String getTotalChild() {
		return totalChild;
	}
	public void setTotalChild(String totalChild) {
		this.totalChild = totalChild;
	}
	public String getCheckinDate() {
		return checkinDate;
	}
	public void setCheckinDate(String checkinDate) {
		this.checkinDate = checkinDate;
	}
	public String getCheckoutDate() {
		return checkoutDate;
	}
	public void setCheckoutDate(String checkoutDate) {
		this.checkoutDate = checkoutDate;
	}
	public String getStayDate() {
		return stayDate;
	}
	public void setStayDate(String stayDate) {
		this.stayDate = stayDate;
	}
	public String getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Timestamp getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Timestamp bookingDate) {
		this.bookingDate = bookingDate;
	}
	
	
	
	
	
}
