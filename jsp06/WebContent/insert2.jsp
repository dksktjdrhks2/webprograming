<%@page import="bean.MemberDAO"%>
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
		<!-- 입력받은 값 파라미터로 서버에서 받아주고, DTO객체 만들어서, DTO값 넣어주는 것 까지  -->
		<jsp:useBean id="dto" class="bean.MemberDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			MemberDAO dao = new MemberDAO();
			dao.insert(dto);
		%>
		<h3>받은 데이터 확인</h3>
		<hr color="red">
		아이디 <%= dto.getId() %><br>
		비밀번호 <%= dto.getPw() %><br>
		이름 <%= dto.getName() %><br>
		전화번호 <%= dto.getTel() %><br>
	</body>
</html>