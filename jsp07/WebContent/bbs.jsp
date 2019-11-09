<%@page import="shop.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
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
			<%
				BbsDAO dao = new BbsDAO();
				ArrayList<BbsDTO> list = dao.selectAll();
				int count = list.size(); // 리스트 내의 갯수
			%>
			<div id="content">
				게시물의 총 갯수 : <%= count %>개<br> <!-- 표현식 : 프린트용 -->
				<table>
					<tr>
						<th>아이디</th>
						<th>제 목</th>
						<th>내 용</th>
						<th>작성자</th>
					</tr>
					<tr><td colspan="4"><hr></tr>
					<%
						for(BbsDTO dto : list){
					%>
						<tr>
							<td><%= dto.getId() %></td>
							<td width="500"><%= dto.getTitle() %></td>
							<td><%= dto.getContent() %></td>
							<td><%= dto.getWriter() %></td>
						</tr>
						<tr><td colspan="4"><hr></tr>
					<% 		
						}
					%>
					<tr>
						<td colspan="4" align="right">
							<div id="write" align="center">
								<a href="bbs2.jsp" style="color: black;">글쓰기</a><br>
							</div>
						</td>					
					</tr>
				</table>
				<%-- <%
					for(BbsDTO dto : list){
						out.print("id: " + dto.getId() + "<br>");
						out.print("제목: " + dto.getTitle() + "<br>");
						out.print("내용: " + dto.getContent() + "<br>");
						out.print("작성자: " + dto.getWriter() + "<br>");
						out.print("<hr>");
					}
				%> --%>
			</div>
		</div>
	</body>
</html>