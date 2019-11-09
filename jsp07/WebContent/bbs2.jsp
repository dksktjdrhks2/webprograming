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
				<h3>게시물 작성</h3>
				<hr size="3">
				<form action="bbs3.jsp" method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" style="width: 500px;"></td>
						</tr>
						<tr>
							<td>내용</td>
							<!-- <td><input type="text" name="content"></td> -->
							<td><textarea rows="35" cols="69" name="content"></textarea></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="writer"></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="sub_btn" type="submit" value="게시물 작성"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>