<%@page import="shop.BbsDTO"%>
<%@page import="shop.BbsDAO"%>
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
		<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			BbsDAO dao = new BbsDAO();
			BbsDTO dto2 = dao.selectOne(dto);
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
			<div id="content" align="center">
				<table style="width: 600px;">
						<tr style="font-size: 20px;">
							<td style="text-align: center;">번호 : <%=dto2.getId() %></td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr style="font-size: 20px;">
							<td style="text-align: center;">제목 : <%=dto2.getTitle() %></td>
						</tr>
						<tr>
							<td colspan="2"><hr></td>
						</tr>
						<tr style="width: 400px;">
							<!-- <td><input type="text" name="content"></td> -->
							<td style="text-align: center; height: 400px;">
							<label><%=dto2.getContent() %></label>
							</td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr>
							<td style="text-align: center;">작성자 : <%=dto2.getWriter() %></td>
						</tr>
						<tr>
						<td>
							<div id="modify" align="center" style="float: left;">
								<a href="bbs5.jsp?id=<%=dto2.getId() %>" style="color: black; text-decoration: none;">수정</a>
							</div>
							<div id="delete" align="center" style="float: right;">
								<a href="bbs7.jsp?id=<%=dto2.getId() %>" style="color: black; text-decoration: none;">삭제</a>
							</div>
						</td>					
					</tr>
					</table>
			</div>
		</div>
	</body>
</html>