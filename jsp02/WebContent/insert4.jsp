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
	out.print("���� ������ �������� ���� ����� �Դϴ�.");
}else{

	out.print("���Ƹ� �̸� : " + d_name + "<br>");
	out.print("��û�� �̸� : " + name + "<br>");
	out.print("������� : " + b_year + "�� " + b_month + "�� " + b_days + "��<br>");
	out.print("�����ϰԵ� ��� : ");
	for(String a : dir){
		out.print(a + " ");
	}
	out.print("<br>�������� ���� ���� : " + agrees + "<br>");
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