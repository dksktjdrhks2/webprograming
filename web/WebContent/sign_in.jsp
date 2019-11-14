<%@page import="webproject.MemberDAO"%>
<%@page import="webproject.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id="dto" class="webproject.MemberDTO"></jsp:useBean>
				<jsp:setProperty property="*" name="dto"/>
				<%
					MemberDAO dao = new MemberDAO();
					boolean flag = dao.sign_in(dto);
					if(flag){
						session.setAttribute("id", dto.getId());
						response.sendRedirect("wifi_next.html");
					%>
					<% 
					}else{
					%>
						<h3>ㅠㅠ, <%=dto.getId() %>로 로그인 실패했어</h3>
						<a href="wifi_main.html">메인으로 이동</a>
					<% 
					}
				%>
	</body>
</html>