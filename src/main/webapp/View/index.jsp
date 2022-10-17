<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<center>
<form action="log">
<h2>Login Form</h2>
${msg}
<table>
	<tr>
		<th>Username</th>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<th>Password</th>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Login"></td>
		<td><a href="register">Register Here!</a>
	</tr>	
</table>
</form>
</center>
</body>
</html>