package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

//db처리 전담 해주는 클래스
//crud 중심으로 구현.
public class MemberDAO {
	Connection con = null;
	public MemberDAO(){
		try {
			// 1. 커넥터(드라이버) 설정.
			Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
					
			// 2. DB접속(연결) [url, id, pw]
			String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
			String user = "root"; // DB user_id
			String password = "1234"; // DB user_password
			con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
	
	public void insert(MemberDTO dto){
		try {
			String sql = "insert into member values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			ps.executeUpdate(); // sql문을 서버로 전송
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
	
	public void select() throws Exception{
		
	}
	
	public void update() throws Exception{
		
	}
	
	public void delete() throws Exception{
		
	}
}
