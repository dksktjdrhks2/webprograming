package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ReplyDAO {
	Connection con = null;
	public ReplyDAO() {
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
	
	public ArrayList<ReplyDTO> selectAll(ReplyDTO dto) {
		ArrayList<ReplyDTO> list = new ArrayList<>();
		try {
			String sql = "select * from reply where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ReplyDTO dto2 = new ReplyDTO();
				dto2.setId(rs.getString(1));
				dto2.setContent(rs.getString(2));
				dto2.setWriter(rs.getString(3));
				list.add(dto2);
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return list;
	}
	
	public void insert(ReplyDTO dto){
		try {
			String sql = "insert into reply values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getContent());
			ps.setString(3, dto.getWriter());
			ps.executeUpdate(); // sql문을 서버로 전송
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
}
