<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<center>
<form action="update">
<h2>Edit Form</h2>
<c:forEach var="row" items="${data}">
<input type="hidden" name="uid" value="${row.uid}">
<table>
	<tr>
		<th>Name</th>
		<td><input type="text" name="name" value="${row.name}"></td>
	</tr>
	<tr>
		<th>City</th>
		<td><input type="text" name="city" value="${row.city}"></td>
	</tr>
	<tr>
		<th>Mobile No</th>
		<td><input type="text" name="mobno" value="${row.mobno}"></td>
	</tr>
	<tr>
		<th>Gender</th>
		<c:if test="${row.gender=='Male'}">
		<td><input type="radio" name="gender" value="Male" checked="checked">Male
			<input type="radio" name="gender" value="Female">Female</td>
		</c:if>	
		
		<c:if test="${row.gender=='Female'}">
		<td><input type="radio" name="gender" value="Male" >Male
			<input type="radio" name="gender" value="Female" checked="checked">Female</td>
		</c:if>
	</tr>
	<c:set var="is" value="${row.language}"></c:set>
	<tr>
		<th>Language</th>
		<td>
		<c:choose>
		<c:when test="${fn:contains(is,'Marathi')}">
		<input type="checkbox" name="language" value="Marathi" checked="checked">Marathi
		</c:when>
		<c:otherwise><input type="checkbox" name="language" value="Marathi">Marathi</c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${fn:contains(is,'Hindi')}">
		<input type="checkbox" name="language" value="Hindi" checked="checked">Hindi
		</c:when>
		<c:otherwise><input type="checkbox" name="language" value="Hindi">Hindi</c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${fn:contains(is,'English')}">
		<input type="checkbox" name="language" value="English" checked="checked">English
		</c:when>
		<c:otherwise><input type="checkbox" name="language" value="English">English</c:otherwise>
		</c:choose>
		</td>
	</tr>
	<tr>
		<th>Country</th>
		<td><select name="country">
			<option selected="selected" value="${row.country}">${row.country}</option>
			<option value="India">India</option>
			<option value="USA">USA</option>
		</select>			
	<tr>
		<th>Username</th>
		<td><input type="text" name="username" value="${row.username}"></td>
	</tr>
	<tr>
		<th>Password</th>
		<td><input type="text" name="password" value="${row.password}"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Submit"></td>
	</tr>	
</table>
</c:forEach>
</form>
</center>

</body>
</html>