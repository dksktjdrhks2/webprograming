<%@page import="shop.MemberDAO"%>
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
		<jsp:useBean id="dto" class="shop.MemberDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			MemberDAO dao = new MemberDAO();
			dao.insert(dto);
		%>
		<div id="total">
			<!-- 메뉴가 들어가는 부븐 -->
			<div id="top">
				<jsp:include page="top.jsp"></jsp:include>
			</div>
			
			<!-- 장바구니 들어가는 부분 -->
			<div id="top2">장바구니</div>
			<hr>
			<br>
			<!-- 메인 처리 내용이 들어가는 부분 -->
			<div id="content">회원가입 신청이 완료되었습니다.</div>
		</div>
	</body>
</html>