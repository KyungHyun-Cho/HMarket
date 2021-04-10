package post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.Session;

public class PostDAO {
	private Connection conn;
	private ResultSet rs;
	
	public PostDAO() {
		try {
			String dbURL = "jdbc:mysql://remotemysql.com:3306/rZaS75wlcF?serverTimezone=UTC";
			String dbID = "rZaS75wlcF";
			String dbPassword = "2BFf8LzhWH";
		    Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			System.out.println("데이터베이스 접속 성공");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public int Write(int userNo, String pName, String pTitle, String pPrice, String pIntro, String pDetail, String pThumbNail) {
		String SQL = "INSERT INTO PRODUCT(uNo, pName, pTitle, pPrice, pIntro, pDetail, pThumbNail) VALUES(?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, pName);
			pstmt.setString(3, pTitle);
			pstmt.setString(4, pPrice);
			pstmt.setString(5, pIntro);
			pstmt.setString(6, pDetail);
			pstmt.setString(7, pThumbNail);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류
	}

}
