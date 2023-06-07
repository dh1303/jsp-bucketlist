<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
<%
request.setCharacterEncoding("UTF-8");

String name = null;

boolean isValid = false;

try {
	Connection conn = Util.getConnection();

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sql = "SELECT student_id, pwd, name FROM user_tbl WHERE student_id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, id);
    
    ResultSet rs = pstmt.executeQuery();
    
    while(rs.next()) {
	    if(id.equals(rs.getString(1)) && pwd.equals(rs.getString(2))) {
	    	isValid = true;
	    	session.setAttribute("id",id);
	    	name = rs.getString(3);
	    }    
    }
}
catch(Exception e) {
	e.printStackTrace();
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>u_action</title>
</head>
<body>

<%if(isValid){ %>
	<p>
		<strong><%=name %></strong> 회원님 로그인 되었습니다.
		<a href="index.jsp">확인</a>
	</p>
<%}else{ %>
	<p>
		아이디 혹은 비밀번호가 틀렸습니다. &nbsp;
		<a href="login.jsp">다시 시도</a>
	</p>
<%} %>
</body>
</html>