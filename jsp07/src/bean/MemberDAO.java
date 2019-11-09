package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// DAO(Data Access Object, db처리 전담 클래스)
// crud 구현된 클래스
public class MemberDAO {
	// insert
	public void insert(MemberDTO dto) throws Exception {
		// 1. 커넥터(드라이버) 설정.
		Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
		System.out.println("1. 커넥터 설정 ok...(1/4)");
		
		// 2. DB접속(연결) [url, id, pw]
		String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
		String user = "root"; // DB user_id
		String password = "1234"; // DB user_password
		Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		System.out.println("2. db연결 ok...(2/4)");
		
		// 3. sql문 결정해서 객체화.
		String sql = "insert into member values (?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());
		System.out.println("3. sql문 생성 ok...(3/4)");
		
		// 4. sql문 전송.
		ps.executeUpdate(); // sql문을 서버로 전송
		System.out.println("4. sql문 전송 ok...(4/4)");
	}
	
	// delete
	public void delete(MemberDTO dto) throws Exception {
		Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
		System.out.println("1. 커넥터 설정 ok...");
		
		//2. db접속
		String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
		String user = "root"; // DB user_id
		String password = "1234"; // DB user_password
		Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		System.out.println("2. db연결 ok...");
		
		//3. sql문 생성
		String sql = "delete from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
		ps.setString(1, dto.getId());		// 2번 ?에 id를 넣어준다.
		System.out.println("3. sql문 생성 ok...");
		
		//4. sql문 mySQL서버에 전송
		ps.executeUpdate(); // sql문을 서버로 전송
		System.out.println("4. sql문 전송 ok...");
	}

	// update
	public void update(MemberDTO dto) throws Exception {
		Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
		System.out.println("1. 커넥터 설정 ok...");
		
		//2. db접속
		String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
		String user = "root"; // DB user_id
		String password = "1234"; // DB user_password
		Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		System.out.println("2. db연결 ok...");
		
		//3. sql문 생성
		String sql = "update member set tel = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
		ps.setString(1, dto.getTel());	// 1번 ?에 tel를 넣어준다.
		ps.setString(2, dto.getId());	// 2번 ?에 id를 넣어준다.
		System.out.println("3. sql문 생성 ok...");
		
		//4. sql문 mySQL서버에 전송
		ps.executeUpdate();
		System.out.println("4. sql문 전송 ok...");
	}
	
	// selectOne
	public void selectOne(MemberDTO dto) throws Exception {
		Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
		System.out.println("1. 커넥터 설정 ok...");
		
		//2. db접속
		String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
		String user = "root"; // DB user_id
		String password = "1234"; // DB user_password
		Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		System.out.println("2. db연결 ok...");
		
		//3. sql문 생성
		String sql = "select * from member where name = ?";
		PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
		ps.setString(1, dto.getId());
		System.out.println("3. sql문 생성 ok...");
		
		ResultSet result = ps.executeQuery(); // sql문을 서버로 전송
		System.out.println("4. sql문 전송 ok...");
	}
	
	// selectAll
	public void selectAll() throws Exception {
		Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
		System.out.println("1. 커넥터 설정 ok...");
		
		//2. db접속
		String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
		String user = "root"; // DB user_id
		String password = "1234"; // DB user_password
		Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
		System.out.println("2. db연결 ok...");
		
		//3. sql문 생성
		String sql = "select * from member";
		PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
		System.out.println("3. sql문 생성 ok...");
		
		//4. sql문 mySQL서버에 전송
		ResultSet result = ps.executeQuery(); // sql문을 서버로 전송
		System.out.println("4. sql문 전송 ok...");
	}
	
}
