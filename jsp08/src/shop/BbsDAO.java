package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//db처리 전담 해주는 클래스
//crud 중심으로 구현.
public class BbsDAO {
	Connection con = null;
	public BbsDAO(){
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
	
	public void insert(BbsDTO dto){
		try {
			String sql = "insert into bbs values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setString(4, dto.getWriter());
			ps.executeUpdate(); // sql문을 서버로 전송
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
	
	public ArrayList<BbsDTO> selectAll() {
		ArrayList<BbsDTO> list = new ArrayList<>();
		try {
			String sql = "select * from bbs";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				BbsDTO dto = new BbsDTO();
				dto.setId(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setWriter(rs.getString(4));
				list.add(dto);
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return list;
	}
	
	public BbsDTO selectOne(BbsDTO dto) {
		BbsDTO dto2 = new BbsDTO();
		try {
			String sql = "select * from bbs where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				dto2.setId(rs.getString(1));
				dto2.setTitle(rs.getString(2));
				dto2.setContent(rs.getString(3));
				dto2.setWriter(rs.getString(4));
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return dto2;
	}
	
	public void update(BbsDTO dto){
		try {
			String sql = "update bbs set title = ?, content = ?, writer = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getContent());
			ps.setString(3, dto.getWriter());
			ps.setString(4, dto.getId());
			ps.executeUpdate(); // sql문을 서버로 전송
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
	
	public void delete(BbsDTO dto){
		try {
			String sql = "delete from bbs where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			ps.executeUpdate(); // sql문을 서버로 전송
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
	}
}
