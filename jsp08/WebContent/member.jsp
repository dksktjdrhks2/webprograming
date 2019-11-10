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
				<h3>회원가입 처리</h3>
				<hr size="3">
				<form action="login.jsp" method="post">
					아이디 : <input type="text" name="id"><br>
					패스워드 : <input type="text" name="pw"><br>
					<button type="submit">로그인 처리</button>
				</form>
				<hr>
				<form action="member22.jsp" method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input type="text" name="pw"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="text" name="tel"></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="sub_btn" type="submit" value="가입 신청"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>