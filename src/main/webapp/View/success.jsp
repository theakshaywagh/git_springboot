<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
<style type="text/css">
table, td, th
{
	border-collapse: collapse;
	border: 1px solid black;
}
</style>
<script type="text/javascript">
function edit(uid)
{
	document.location.href="edit?uid="+uid;	
}
function del(uid)
{
	document.location.href="delete?uid="+uid;	
}

</script>
</head>
<body>
<center>
<form>
${msg}
<table>
	<tr>
		<th>UID</th>
		<th>Name</th>
		<th>City</th>
		<th>Mobile No</th>
		<th>Gender</th>
		<th>Language</th>
		<th>Country</th>
		<th>Username</th>
		<th>Password</th>
		<th>Action</th>
	</tr>	
	<c:forEach var="row" items="${data}">
	<tr>
		<td>${row.uid}</td>
		<td>${row.name}</td>
		<td>${row.city}</td>
		<td>${row.mobno}</td>
		<td>${row.gender}</td>
		<td>${row.language}</td>
		<td>${row.country}</td>
		<td>${row.username}</td>
		<td>${row.password}</td>
		<td><input type="button" value="Edit" onclick="edit(${row.uid})">
			<input type="button" value="Delete" onclick="del(${row.uid})"></td>
	</tr>
	</c:forEach>
</table>
<a href="/">Logout</a>
</form>
</center>
</body>
</html>