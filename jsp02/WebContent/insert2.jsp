<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String id = request.getParameter("id");
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
out.print("id: " + id + "<br>");
out.print("title: " + title + "<br>");
out.print("content: " + content + "<br>");
out.print("wirter: " + writer + "<br>");
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