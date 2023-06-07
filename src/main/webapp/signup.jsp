<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign up</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
<h2 style="text-align: center">회원가입</h2>

<form method="post" action="s_action" name="sfrm" style="display: flex; justify-content: center; align-items: center">
<table border="1">

<tr>
	<td>학번</td>
	<td><input type="text" name="student_id" maxlength="4"> 예) 2110 </td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" maxlength="15"> 예) 오영기 </td>
</tr>
<tr>
	<td>성별</td>
	<td>
		<input type="radio" name="gender" value="남"> 남
		<input type="radio" name="gender" value="여"> 여
	</td>
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type="password" name="password"> 예) 1234 </td>
</tr>

</table>
</form>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>