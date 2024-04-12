<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
	font-family: sans-serif;
}

body {
	background-color: #f0f0f0;
}

#main {
	text-align: center;
}

.bg {
	background-color: rgb(3, 3, 210);
	height: 280px;
	position: relative;
}

.for {
	display: flex;
	justify-content: center;
	margin-top: -130px;
	position: relative;
}

.for-container {
	background-color: white;
	width: 300px;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
	padding: 20px 80px;
	background-color: rgb(231, 228, 228);
	padding-bottom: 80px;
}

#email, #password {
	width: 100%;
	padding: 6px;
	margin: 10px 0;
	box-sizing: border-box;
}

.f {
	font-size: 16px;
	font-weight: bold;
	text-align: left;
}

.btn {
	margin-top: 30px;
	background-color: green;
	border: 2px solid green;
	padding: 10px;
	color: white;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	background-color: green;
}

.btn:hover {
	background-color: rgb(10, 87, 10);
}

.img {
	height: 100px;
	border-radius: 20px;
	margin-bottom: 10px;
}
</style>
<body>
<div id="main">
		<form action="forgotpassworduser" method="post">
			<div class="bg"></div>
			<div class="for">
				<div class="for-container">
					<img class="img"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQWN5iTWapXFajraQmIDFLR41b6SciCCBYpPPvzUWO-BxV6sv"
						alt="">
					<h3 style="font-size: 30px; margin-bottom: 10px;">
						Forgot <br> <span style="color: rgb(93, 10, 236);">Password</span>
					</h3>
					<p
						style="color: gray; line-height: 18px; margin-bottom: 10px; font-size: 15px;">Enter
						your email and reset your password</p>
					<p class="f">
						Email: <input type="email" name="email" id="email">
					</p>
					<p class="f">
						Change Password: <input type="password" name="password"
							id="password">
					</p>
					<input class="btn" type="submit" name="forgot"
						value="Reset Password">
				</div>
			</div>
		</form>
	</div>
</body>
</html>