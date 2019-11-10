<%@page import="shop.ReplyDAO"%>
<%@page import="shop.ReplyDTO"%>
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
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		  <link rel="stylesheet" href="/resources/demos/style.css">
		  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		  <script>
		  $(function(){
			  $( "#dialog" ).dialog({
			      autoOpen: false,
			      show: {
			        effect: "blind",
			        duration: 1000
			      },
			      hide: {
			        effect: "explode",
			        duration: 1000
			      }
			    });
			 
			    $( "#opener" ).on( "click", function() {
			      $( "#dialog" ).dialog( "open" );
			    });
			    $('button').click(function() {
			    	id = $('#id').val();
			    	content = $('#content').val();
				    writer = $('#writer').val();
					$.ajax({
						url:"reply.jsp",
						data:{
							id: id,
							content: content,
							writer: writer
						},
						success: function(result) {
							$('ul').append("<li>"+ result + "</li>");
						}
					})
				})
			});
		  </script>
		  <style type="text/css">
		  	#opener{
		  		border: 5px dashed;
		  		border-radius: 10px;
		  		width: 100px;
		  		height: 50px;
		  		background: #e1e1e1;
		  		color: black;
		  		font-size: 20px;
		  	}
		  	#opener:hover{
		  		border: none;
		  		border-radius: 10px;
		  		width: 100px;
		  		height: 50px;
		  		background: black;
		  		color: white;
		  	}
		  </style>
	</head>
	<body>
		<jsp:useBean id="dto" class="shop.ProductDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<%
			ProductDAO dao = new ProductDAO();
			ProductDTO dto2 = dao.selectOne(dto);
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
				<%=session.getAttribute("id") %>님 환영합니다!!<br>
				<table style="width: 600px;">
						<tr style="font-size: 20px;">
							<td style="text-align: center;">번호 : <%=dto2.getId() %></td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr style="font-size: 20px;">
							<td style="text-align: center;">차종 : <%=dto2.getTitle() %></td>
						</tr>
						<tr>
							<td colspan="2"><hr></td>
						</tr>
						<tr style="width: 400px;">
							<!-- <td><input type="text" name="content"></td> -->
							<td style="text-align: center;">
							<label><%=dto2.getContent() %></label>
							</td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr>
							<td style="text-align: center;">가격 : <%=dto2.getPrice() %> 만원</td>
						</tr>
						<tr>
							<td style="text-align: center;">
							<div id="dialog" title="이미지">
  								<p><img src="img/<%=dto2.getImg() %>"></p>
							</div>
								<br>
								<br>
								<br>
								<button id="opener">이미지</button>
							</td>
						</tr>
				</table>
				<hr>
					<input type="text" name="content" id="content">
					<input type="hidden" name="writer" value="<%= session.getAttribute("id")%>" id="writer">
					<input type="hidden" name="id" value="<%= dto2.getId()%>" id="id">
					<button id="modify" type="submit">작성</button>
				<div><ul>
				<%
					ReplyDAO dao2 = new ReplyDAO();
					ReplyDTO dto3 = new ReplyDTO();
					dto3.setId(dto.getId());
					ArrayList<ReplyDTO> list2 = dao2.selectAll(dto3);
					for(ReplyDTO dtos : list2){
						
				%> 
						<li>- <%=dtos.getContent() %>, <%= dtos.getWriter() %></li>
				<%
					}
				%>
				</ul></div>
			</div>
		</div>
	</body>
</html>