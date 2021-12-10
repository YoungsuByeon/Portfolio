package Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;




public class MemberManagerDAO {
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
	
	public int insertMember(MemberInfo member) {
		
		PreparedStatement pstm = null;
		String query ="insert into member values (null,?,?,?,?,?,?,?,?,?,?);";
		int res = 0;
		
		openConnection();
		try{
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, member.getId());
			pstm.setString(2, member.getPw());
			pstm.setString(3, member.getName());
			pstm.setString(4, member.getYear());
			pstm.setString(5, member.getMonth());
			pstm.setString(6, member.getDay());
			pstm.setString(7, member.getGender());
			pstm.setString(8, member.getEmail());
			pstm.setString(9, member.getPhone());
			
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			pstm.setTimestamp(10, ts);
			
			res = pstm.executeUpdate();			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return res;
	}
	
	public int removeMember(String id) {
		PreparedStatement pstm = null;
		String query = "delete from member where id=?;";
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
	
	public int updateMember(MemberInfo member) {
		PreparedStatement pstm = null;
		String query = "update member set pw=?, name=?, year=?, month=?, day=?, gender=?, email=?, phone=? where id=?;";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, member.getPw());
			pstm.setString(2, member.getName());
			pstm.setString(3, member.getYear());
			pstm.setString(4, member.getMonth());
			pstm.setString(5, member.getDay());
			pstm.setString(6, member.getGender());
			pstm.setString(7, member.getEmail());
			pstm.setString(8, member.getPhone());
			pstm.setString(9, member.getId());
			
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return res;
	}
	
	public int addressUpdate(MemberInfo member) {
		PreparedStatement pstm = null;
		String query = "update member set email=?, phone=? where id=?;";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, member.getEmail());
			pstm.setString(2, member.getPhone());
			pstm.setString(3, member.getId());
			
			
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return res;
	}
	
	public int pwUpdate(MemberInfo member) {
		PreparedStatement pstm = null;
		String query = "update member set pw=? where id=?;";
		int res = 0;
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, member.getPw());
			pstm.setString(2, member.getId());
			
			res = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return res;
	}
	
	public boolean isMember(String id, String pw) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from member where id=? and pw=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			
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
	
	public int checkId(String id) {
		PreparedStatement pstm = null;
		int cnt = 0;
		String query = "select count(id) as cnt from member where id=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return cnt;
	}
	
	public boolean findId(String name, String email) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from member where name=? and email=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, name);
			pstm.setString(2, email);
			
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
	
	public boolean findPw(String id, String name, String email) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from member where id=? and name=? and email=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			pstm.setString(2, name);
			pstm.setString(3, email);
			
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
	
	public boolean changePw(String id) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from member where id=?;";
		
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
	
	public MemberInfo getMember(String customerNum) {
		MemberInfo member = new MemberInfo();
		PreparedStatement pstm = null;
		String query = "select * from member where id=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, customerNum);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				member.setCustomerNum(rs.getInt("customerNum"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setYear(rs.getString("year"));
				member.setMonth(rs.getString("month"));
				member.setDay(rs.getString("day"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setJoinDate(rs.getTimestamp("joinDate"));
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return member;
	}

	public MemberInfo getFindId(String customerNum) {
		MemberInfo member = new MemberInfo();
		PreparedStatement pstm = null;
		String query = "select * from member where name=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, customerNum);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				member.setCustomerNum(rs.getInt("customerNum"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setYear(rs.getString("year"));
				member.setMonth(rs.getString("month"));
				member.setDay(rs.getString("day"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setJoinDate(rs.getTimestamp("joinDate"));
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return member;
	}
	
	public ArrayList<MemberInfo> getDBList(){
		ArrayList<MemberInfo> datas = new ArrayList<>();
		String query = "select * from member order by customerNum asc;";
		Statement stmt;
		ResultSet rs;
		
		openConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				MemberInfo member = new MemberInfo();
				member.setCustomerNum(rs.getInt("customerNum"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setYear(rs.getString("year"));
				member.setMonth(rs.getString("month"));
				member.setDay(rs.getString("day"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setJoinDate(rs.getTimestamp("joinDate"));
				
				datas.add(member);				
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
	
	public ArrayList<MemberInfo> getMemberList(String keyField, String keyWord){
		ArrayList<MemberInfo> list = new ArrayList<MemberInfo>();
			
		Statement stmt;
		ResultSet rs;
		
		openConnection();
		try {
			String query = "select * from member ";
			if(keyWord != null && !keyWord.equals("")) {
				query += "where " + keyField.trim() + " like '%"+ keyWord.trim() +"%' order by id";
			}else {
				query += "order by id";
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				MemberInfo member = new MemberInfo();
				member.setCustomerNum(rs.getInt("customerNum"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setYear(rs.getString("year"));
				member.setMonth(rs.getString("month"));
				member.setDay(rs.getString("day"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setJoinDate(rs.getTimestamp("joinDate"));
				
				list.add(member);
			}
			rs.close();
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection();
		}
		return list;
	}
	
	
}
