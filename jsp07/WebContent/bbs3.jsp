<%@page import="shop.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" href="css/project.css">
	</head>
	<body>
		<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			BbsDAO dao = new BbsDAO();
			dao.insert(dto);
		%>
		<%
			response.sendRedirect("bbs.jsp");
		%>
		</div>
	</body>
</html>