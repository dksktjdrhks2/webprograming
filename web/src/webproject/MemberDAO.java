package webproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class MemberDAO {
	Connection con = null;
	public MemberDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://192.168.86.222:3306/web"; // DBeaver view databases -> server/ 占쎄틙 -> URL
			String user = "web"; // DB user_id
			String password = "in0721"; // DB user_password
			con = DriverManager.getConnection(url, user, password); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	// insert
	public void insert(MemberDTO dto) {
		try {
		String sql = "insert into member values (?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql); 
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getBirth());
		ps.setString(4, dto.getGender());

		ps.executeUpdate(); 
		}catch (Exception e) {
			System.out.println("오류 >> " + e.getMessage());
		}
	}
	
	public boolean sign_in(MemberDTO dto) {
		boolean flag = false;
		try {
			String sql = "select * from member where id = ? and pw = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				System.out.println("로그인 OK");
				flag = true;
			}else {
				System.out.println("로그인 NO");
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return flag;
	}
}
