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
			//�ڹ� �ڵ带 �־ �����ʿ��� ó���ϴ� �κ� �ڵ带 �ִ� �κ�.
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			out.print("���� ID >> " + id + "<br>");
			out.print("���� PW >> " + pw);
		%>
	</body>
</html>