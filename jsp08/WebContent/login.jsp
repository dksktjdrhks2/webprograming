<%@page import="shop.MemberDAO"%>
<%@page import="shop.MemberDTO"%>
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
			<div id="content">
				<jsp:useBean id="dto" class="shop.MemberDTO"></jsp:useBean>
				<jsp:setProperty property="*" name="dto"/>
				<%
					MemberDAO dao = new MemberDAO();
					boolean flag = dao.login(dto);
					if(flag){
						session.setAttribute("id", dto.getId());
					%>
						<h3>ㅎㅇㅎㅇ, <%=dto.getId() %>로 로그인 성공했어</h3>
					<% 
					}else{
					%>
						<h3>ㅠㅠ, <%=dto.getId() %>로 로그인 실패했어</h3>
						<a href="member.jsp">이동</a>
					<% 
					}
				%>
			</div>
		</div>
	</body>
</html>