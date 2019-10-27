<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String reply = request.getParameter("rep");
	String id = request.getParameter("id");
	out.print("-> " + id + " : " + reply + "<br>");
%>