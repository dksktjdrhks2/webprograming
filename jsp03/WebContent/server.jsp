<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//자바 코드를 넣어서 서버쪽에서 처리하는 부분 코드를 넣는 부분.
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			out.print("받은 ID >> " + id + "<br>");
			out.print("받은 PW >> " + pw);
		%>
	</body>
</html>