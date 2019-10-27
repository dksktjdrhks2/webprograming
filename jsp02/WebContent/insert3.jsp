<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("com") + "-" + request.getParameter("tel");
String gender = request.getParameter("gender");
String[] hobby = request.getParameterValues("hobby");
out.print("id : " + id + "<br>");
out.print("pw : " + pw + "<br>");
out.print("name : " + name + "<br>");
out.print("tel : " + tel + "<br>");
out.print("gender : " + gender + "<br>");
out.print("hobby : ");
for(String a : hobby){
	out.print(a + " ");
}
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