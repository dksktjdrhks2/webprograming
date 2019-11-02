<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
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
			String sql = "delete from computer where id = ?";
			PreparedStatement ps = con.prepareStatement(sql); // sql문으로 변환해준다
			// DB는 인덱스가 1번부터 시작한다 (유일하다)
			ps.setString(1, id);		// 2번 ?에 id를 넣어준다.
			out.print("3. sql문 생성 ok...<br>");
			
			//4. sql문 mySQL서버에 전송
			ps.executeUpdate(); // sql문을 서버로 전송
			out.print("3. sql문 전송 ok...<br>");
		%>
	</body>
</html>