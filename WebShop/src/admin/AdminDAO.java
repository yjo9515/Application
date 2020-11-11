package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	
	public AdminDAO() {
		try {
//			String driver = ;
			 String url = "jdbc:oracle:thin:@localhost:1521:XE";
			 String user = "shop";
			 String pwd = "1234";
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 conn = DriverManager.getConnection(url,user,pwd);
			 
		}catch(Exception e) {
			System.out.println("접속오류");
			e.printStackTrace();
		}
		
	}
	public int adminlogin(String adminID, String adminPassword) {
		String SQL = "SELECT * FROM admin WHERE adminID = ? and adminPassword = ?";
		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, adminID);	
			pstm.setString(2, adminPassword);
			
			
		return pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	
	}
	
	}
