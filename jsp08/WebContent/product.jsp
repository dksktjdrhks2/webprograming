<%@page import="shop.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.ProductDAO"%>
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
			<%
				ProductDAO dao = new ProductDAO();
				ArrayList<ProductDTO> list = dao.selectAll();
				int count = list.size();
			%>
			<!-- 장바구니 들어가는 부분 -->
			<div id="top2">장바구니</div>
			<hr>
			<br>
			<!-- 메인 처리 내용이 들어가는 부분 -->
			<div id="content">
				<%=session.getAttribute("id") %>님 환영합니다!!<br>
				차종 : <%= count %>개<br> <!-- 표현식 : 프린트용 -->
				<table>
					<tr>
						<th style="width: 100px;">번호</th>
						<th>차종</th>
						<th style="width: 100px;">설명</th>
						<th>가격(만)</th>
						<th>이미지</th>
					</tr>
					<tr><td colspan="5"><hr></tr>
					<%
						for(ProductDTO dto : list){
					%>
						<tr>
							<td><%= dto.getId() %></td>
							<td><a href="product2.jsp?id=<%=dto.getId()%>" id="bbs_anchor" style="color: black;"><%= dto.getTitle() %></a></td>
							<td><%= dto.getContent() %></td>
							<td><%= dto.getPrice() %></td>
							<td><img src="img/<%= dto.getImg() %>"></td>
						</tr>
						<tr><td colspan="5"><hr></tr>
					<% 		
						}
					%>
				</table>
			</div>
		</div>
	</body>
</html>