<%@page import="shop.BbsDTO"%>
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
			<div id="content">
				<h3>게시물 수정</h3>
				<hr size="3">
				<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
				<jsp:setProperty property="*" name="dto"/>
				<%
					BbsDAO dao = new BbsDAO();
					BbsDTO dto2 = dao.selectOne(dto);
				%>
				<form action="bbs6.jsp?id=<%=dto.getId() %>" method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><label><%=dto.getId() %></label>
							</td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" style="width: 500px;" value="<%=dto2.getTitle() %>"></td>
						</tr>
						<tr>
							<td>내용</td>
							<!-- <td><input type="text" name="content"></td> -->
							<td><textarea rows="35" cols="69" name="content"><%=dto2.getContent() %></textarea></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="writer" value="<%=dto2.getWriter() %>"></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="modify" type="submit" value="수정하기"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>