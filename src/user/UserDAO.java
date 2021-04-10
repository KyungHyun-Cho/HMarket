package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jdk.nashorn.internal.runtime.logging.Loggable;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://remotemysql.com:3306/rZaS75wlcF?serverTimezone=UTC";
			String dbID = "rZaS75wlcF";
			String dbPassword = "2BFf8LzhWH";
		    Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public int login(String uUserId, String uUserPassword) {
		String SQL = "SELECT uNo FROM USER WHERE uId = ? AND uPw = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, uUserId);
			pstmt.setString(2, uUserPassword);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1) > 0) { //uNo를 검사해서 0보다 큰(유효한 유저 고유번호)이면 성공으로 정의
					return rs.getInt(1); //로그인 성공
				}
				else
					return 0; //비밀번호 틀림
			}
			return -1; //ID가 존재하지 않음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //DB오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER(uId, uPw, uName, uPhone, uEMail) VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  user.getuUserId());
			pstmt.setString(2,  user.getuUserPassword());
			pstmt.setString(3,  user.getuUserName());
			pstmt.setString(4,  user.getuUserPhone());
			pstmt.setString(5,  user.getuUserEmail());

			return pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return -1; // DB오류
	}
}
