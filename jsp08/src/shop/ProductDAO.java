package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
	Connection con = null;
	public ProductDAO() {
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
	
	public ArrayList<ProductDTO> selectAll() {
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			String sql = "select * from product";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setId(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setPrice(rs.getString(4));
				dto.setImg(rs.getString(5));
				list.add(dto);
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return list;
	}
	
	public ProductDTO selectOne(ProductDTO dto) {
		ProductDTO dto2 = new ProductDTO();
		try {
			String sql = "select * from product where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				dto2.setId(rs.getString(1));
				dto2.setTitle(rs.getString(2));
				dto2.setContent(rs.getString(3));
				dto2.setPrice(rs.getString(4));
				dto2.setImg(rs.getString(5));
			}
		} catch (Exception e) {
			System.err.println("에러 발생!");
			System.err.println("내용 >> " + e.getMessage());
		}
		return dto2;
	}
}
