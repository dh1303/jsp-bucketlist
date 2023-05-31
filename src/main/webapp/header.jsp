<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>

<header style="position: fixed; top: 0px; left: 0px; width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: blue; color: white">
(주)GSM 카페 프로그램
</header>

<nav style="position: fixed; top: 40px; left: 0px; width: 100%; height: 30px; line-height: 30px; background-color: lightblue; color: black; padding-left: 20px">
<a href="index.jsp">홈</a> &nbsp;&nbsp;
<a href="list.jsp">버킷리스트</a> &nbsp;&nbsp;

<%
String id = String.valueOf(session.getAttribute("id"));
if("null".equals(id)){ %>
	<a href="login.jsp">로그인</a> &nbsp;&nbsp;
	<a href="signup.jsp">회원가입</a> &nbsp;&nbsp;
<%}

else { %>
	<a href="logout.jsp">로그아웃</a> &nbsp;&nbsp;
<%} %>

</nav>

</body>
</html>