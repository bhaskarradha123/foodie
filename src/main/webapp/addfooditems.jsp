<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 50%;
	margin: 20px auto;
	border-collapse: collapse;
}

td {
	padding: 8px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border-radius: 5px;
	border: none;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.btn {
	display: flex;
	justify-content: center;
	width: 100;
}

.main-s {
	/* border: 1px solid; */
	
}

.table {
	margin-top: 220px;
	/* border: 1px solid; */
	width: 700px;
	height: 200px;
	padding: 200px;
	background-color: #ebedeb;
	border-radius: 5px;
}
</style>
</head>
<body>
	<form action="addfooditems" method="post">
		<div class="main">
			<div class="main-s">
				<table class="table">
					<tr>
						<td>Item Name :</td>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<td>Price :</td>
						<td><input type="number" name="price" id="price"></td>
					</tr>
					<tr>
						<td>Restaurant ID :</td>
						<td><input type="number" name="id" id="id"></td>
					</tr>
				</table>
				<div class="btn">
					<input type="submit" name="addfooditems" value="Add Food Items">
				</div>
			</div>
		</div>
	</form>
</body>
</html>