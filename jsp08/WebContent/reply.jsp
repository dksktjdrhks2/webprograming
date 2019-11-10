<%@page import="shop.ReplyDAO"%>
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
		<jsp:useBean id="dto" class="shop.ReplyDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			ReplyDAO dao = new ReplyDAO();
			dao.insert(dto);
			out.print("- " +  dto.getContent() + "," + dto.getWriter() + "<br>");
		%>
		
	</body>
</html>