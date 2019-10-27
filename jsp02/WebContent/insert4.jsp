<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String d_name = request.getParameter("dongname");
String name = request.getParameter("name");
String b_year = request.getParameter("b_year");
String b_month = request.getParameter("b_month");
String b_days = request.getParameter("b_day");
String[] dir = request.getParameterValues("dir");
String agrees = request.getParameter("agrees");
if(agrees.equals("disagree")){
	out.print("정보 저장을 동의하지 않은 사용자 입니다.");
}else{

	out.print("동아리 이름 : " + d_name + "<br>");
	out.print("신청자 이름 : " + name + "<br>");
	out.print("생년월일 : " + b_year + "년 " + b_month + "월 " + b_days + "일<br>");
	out.print("가입하게된 경로 : ");
	for(String a : dir){
		out.print(a + " ");
	}
	out.print("<br>정보저장 동의 여부 : " + agrees + "<br>");
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