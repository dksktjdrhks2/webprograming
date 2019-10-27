<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
/* 자바 코드 넣는 부분
클라이언트가 입력한 정보를 받아주어야 함.
받아준 정보를 출력! (확인용)
*/
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");
out.print("서버가 받은 id는 " + id + "<br>");
out.print("서버가 받은 pw는 " + pw + "<br>");
out.print("서버가 받은 name는 " + name + "<br>");
out.print("서버가 받은 tel는 " + tel + "<br>");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		
	</body>
</html>