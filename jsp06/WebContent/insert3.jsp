<%@page import="bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<% // scriptlet
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		// 자동 import = Ctrl + Shift + m
		// jsp는 하나씩 찾아서 import해 주어야 한다.
		MemberDTO dto = new MemberDTO(); 
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		%>
		<h3>받은 데이터 확인</h3>
		<hr color="red">
		아이디 <%= dto.getId() %><br>
		비밀번호 <%= dto.getPw() %><br>
		이름 <%= dto.getName() %><br>
		전화번호 <%= dto.getTel() %><br>
	</body>
</html>