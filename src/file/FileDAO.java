package file;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public class FileDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;

	public FileDAO() {
		
		try {
			String dbURL = "jdbc:mysql://localhost:3306/FILE?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public int upload(String fileName, String fileRealName) {
		String SQL = "INSERT INTO FILE VALUES (?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			return pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
