<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<center>
<form action="reg">
<h2>Registration Form</h2>
${msg}
<table>
	<tr>
		<th>Name</th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>City</th>
		<td><input type="text" name="city"></td>
	</tr>
	<tr>
		<th>Mobile No</th>
		<td><input type="text" name="mobno"></td>
	</tr>
	<tr>
		<th>Gender</th>
		<td><input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female</td>
	</tr>
	<tr>
		<th>Language</th>
		<td><input type="checkbox" name="language" value="Marathi">Marathi
			<input type="checkbox" name="language" value="Hindi">Hindi
			<input type="checkbox" name="language" value="English">English
			</td>
	</tr>
	<tr>
		<th>Country</th>
		<td><select name="country">
			<option value="India">India</option>
			<option value="USA">USA</option>
		</select>			
	<tr>
		<th>Username</th>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<th>Password</th>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Submit"></td>
	</tr>	
</table>
</form>
</center>
</body>
</html>