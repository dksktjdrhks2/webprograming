<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		 	//String id = request.getParameter("id");
			//1. 자바와 db를 연결하는 connector설정
			Class.forName("com.mysql.jdbc.Driver"); // stream(통로) 만들어준것
			out.print("1. 커넥터 설정 ok...<br>");
			
			//2. db접속
			//	1) URL
			//	2) id
			//	3) pw
			String url = "jdbc:mysql://localhost:3306/shop"; // DBeaver view databases -> server/ 탭 -> URL
			String user = "root"; // DB user_id
			String password = "1234"; // DB user_password
			Connection con = DriverManager.getConnection(url, user, password); // java.sql Connection선택
			out.print("2. db연결 ok...<br>");
			
			//3. sql문 생성
			//String sql = "insert into computer values ('" + id + "','" + title + "','" + company + "')" ; // 아직 sql문이 아니므로
			String sql = "select * from computer";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			// DB는 인덱스가 1번부터 시작한다 (유일하다)
			//ps.setString(1, id);		// 2번 ?에 id를 넣어준다.
			out.print("3. sql문 생성 ok...<br>");
			
			//4. sql문 mySQL서버에 전송
			// DB에 전송하는 sql문 중에서 반환값이 없는 경우 - ps.executeUpdate();
			// (insert, update, delete)
			// DB에 전송하는 sql문 중에서 반환값이 있는 경우 - ps.executeQuery();
			// (select)
			ResultSet result = ps.executeQuery(); // sql문을 서버로 전송
			out.print("4. sql문 전송 ok...<br><hr>");
			
			//5. 결과 받아온 것 추출
			while(result.next()){ // 반환값이 있는지 없는지 체크
				String id2 = result.getString(1); // id를 추출
				String title = result.getString(2);
				String company = result.getString(3);
				out.print("검색한 id : " + id2 + "<br>");
				out.print("검색한 name : " + title + "<br>");
				out.print("검색한 content : " + company + "<br><hr>");
			}
		%>
	</body>
</html>