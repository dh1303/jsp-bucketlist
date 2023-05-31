<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
<h2 style="text-align: center">로그인</h2>

	<%
	//로그인된 아이디가 있는지 읽어와보기
	String id =(String)session.getAttribute("id");
	%>
	
	<%if(id==null){%>
		<h2>로그인</h2>
		<form action="u_action.jsp" method="post">
		<input type="text" name="id" placeholder="아이디..."/>
		<input type="password" name="pwd" placeholder="비밀번호..."/>
		<button type="submit">로그인</button>
		</form>
		
	<%}else{ %>	
		<jsp:forward page="index.jsp"></jsp:forward>
	<%} %>
</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>