<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style type="text/css">

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	align-self: center;
}

li {
	display: inline;
}

a:link {
	color: red;
}

a:visited {
	color: green;
}

a:hover {
	color: hotpink;
}

a:active {
	color: blue;
}
</style>
</head>
<body>
	<ul style="background-color: yellow; font-size: 30px">
		<li><a href="UserRegister.jsp">Register User</a></li>&nbsp;&nbsp;
		<li><a href="Login.jsp">Login</a></li>&nbsp;&nbsp;
	</ul>
	<h1>User Register (Only for admin)</h1>
	<div>
		<form action="registeruser" method="get">

	Email <input type="text" name="useremail"> <br>
	Password <input type="password" name="userpassword"> <br> 
	<input type="submit"value="Creat Account">
	<button type="button"></button>
		</form>
	</div>

</body>
</html>