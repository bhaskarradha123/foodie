<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addrestaurant" method="post">
		<table>
			<tr>
				<td>Restaurant Name :</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><input type="text" name="address" id="address"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="phone" name="phone" id="phone"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email" id="email"></td>
			</tr>
		</table>
		<input type="submit" name="addrestaurant">
	</form>
</body>
</html>