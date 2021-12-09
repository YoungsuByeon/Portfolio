package reservation;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;


public class BookingManagerDAO {
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/myweb";
	String user = "root";
	String pass = "mysql";
	
	private Connection openConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection)DriverManager.getConnection(url,user,pass);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	private void closeConnection() {
		try {
			if(conn != null) {
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertReservation(BookingInfo reservation) {
		
		PreparedStatement pstm = null;
		String query = "insert into booking values(?,?,?,?,?,?,?,?);";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, reservation.getId());
			pstm.setString(2, reservation.getRoomId());
			
			//java.sql.Date dt = new java.sql.Date(res);
			//pstm.setDate(3, dt);
			//pstm.setDate(4, dt);
			pstm.setString(3, reservation.getCheckinDate()); 
			pstm.setString(4, reservation.getCheckoutDate());
			
			pstm.setString(5, reservation.getTotalAdult());
			pstm.setString(6, reservation.getTotalChild());
			pstm.setString(7, reservation.getTotalAmount());
			
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			pstm.setTimestamp(8, ts);
			
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	public int removeReservation(String id) {
		PreparedStatement pstm = null;
		String query = "delete from booking where id=?;";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	public int updateReservation(BookingInfo reservation) {
		PreparedStatement pstm = null;
		String query = "update reservation set roomId=?, totalAdult=?, totalChild=?, checkinDate=?, checkoutDate=? where id=?;";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, reservation.getRoomId());
			pstm.setString(2, reservation.getTotalAdult());
			pstm.setString(3, reservation.getTotalChild());
			
			pstm.setString(4, reservation.getCheckinDate());
			pstm.setString(5, reservation.getCheckoutDate());
			//pstm.setDate(4, reservation.getCheckinDate());
			//pstm.setDate(5, reservation.getCheckoutDate());
			
			pstm.setString(6, reservation.getId());
			
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return res;
	}
	
	public boolean isReservation(String id) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from reservation where id=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			
			ResultSet rs = pstm.executeQuery();
			res = rs.next();
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	public BookingInfo getReservation(String customerNum) {
		BookingInfo reservation = new BookingInfo();
		PreparedStatement pstm = null;
		String query = "select * from reservation where id=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, customerNum);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				reservation.setCustomerNum(rs.getInt("customerNum"));
				reservation.setId(rs.getString("id"));
				reservation.setName(rs.getString("name"));
				reservation.setYear(rs.getString("year"));
				reservation.setMonth(rs.getString("month"));
				reservation.setDay(rs.getString("day"));
				reservation.setGender(rs.getString("gender"));
				reservation.setEmail(rs.getString("email"));
				reservation.setPhone(rs.getString("phone"));
				reservation.setRoomId(rs.getString("roomId"));
				reservation.setTotalAdult(rs.getString("totalAdult"));
				reservation.setTotalChild(rs.getString("totalChild"));
				
				reservation.setCheckinDate(rs.getString("checkinDate"));
				reservation.setCheckoutDate(rs.getString("checkoutDate"));
				//reservation.setCheckinDate(rs.getDate("checkinDate"));
				//reservation.setCheckoutDate(rs.getDate("checkoutDate"));
				
				reservation.setStayDate(rs.getString("stayDate"));
				reservation.setTotalAmount(rs.getString("totalAmount"));
				reservation.setBookingDate(rs.getTimestamp("bookingDate"));
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return reservation;
	}
	
	public ArrayList<BookingInfo> getReservationList(){
		ArrayList<BookingInfo> datas = new ArrayList<BookingInfo>();
		String query = "select * from reservation order by customerNum asc;";
		Statement stmt;
		ResultSet rs;
		
		openConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				BookingInfo reservation = new BookingInfo();
				reservation.setCustomerNum(rs.getInt("customerNum"));
				reservation.setId(rs.getString("id"));
				reservation.setName(rs.getString("name"));
				reservation.setYear(rs.getString("year"));
				reservation.setMonth(rs.getString("month"));
				reservation.setDay(rs.getString("day"));
				reservation.setGender(rs.getString("gender"));
				reservation.setEmail(rs.getString("email"));
				reservation.setPhone(rs.getString("phone"));
				reservation.setRoomId(rs.getString("roomId"));
				reservation.setTotalAdult(rs.getString("totalAdult"));
				reservation.setTotalChild(rs.getString("totalChild"));
				
				reservation.setCheckinDate(rs.getString("checkinDate"));
				reservation.setCheckoutDate(rs.getString("checkoutDate"));
				//reservation.setCheckinDate(rs.getDate("checkinDate"));
				//reservation.setCheckoutDate(rs.getDate("checkoutDate"));
				
				reservation.setStayDate(rs.getString("stayDate"));
				reservation.setTotalAmount(rs.getString("totalAmount"));
				reservation.setBookingDate(rs.getTimestamp("bookingDate"));
				
				datas.add(reservation);
			}
			rs.close();
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return datas;
	}
	
	
	
	
}
