<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:url value="/j_spring_security_check" var="login"></c:url>
		<form action="${login }" method="post">
			Enter username <input type="text" placeholder="Enter username"
				name="j_username"><br> Enter password <input
				type="password" placeholder="Enter password" name="j_password"><br>
			<input type="checkbox" checked="checked"> Remember me<br>
			<br> <input type="submit" value="Login">

			<div class="container" style="background-color: #f1f1f1">
				<button type="button" class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>
</body>
</html>