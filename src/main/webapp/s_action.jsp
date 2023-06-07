<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");



try {
	Connection con = Util.getConnection();
	String sql = "insert into user_tbl values(?, ?, ?, ?)";
}
catch(Exception e) {
	e.printStackTrace();
}

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>s_action</title>
</head>
<body>

</body>
</html>