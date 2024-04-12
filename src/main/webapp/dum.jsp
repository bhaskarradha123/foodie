<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<form action="dum" id="form" method="post">
			<h1>Register</h1>
			<div class="inputs">
				<label for="firstname">First Name</label> <input type="text"
					id="firstname" name="firstname">
			</div>
			<div class="inputs">
				<label for="lastname">Last Name</label> <input type="text"
					id="lastname" name="lastname">
			</div>
			<div class="inputs">
				<label for="email">Email</label> <input type="email" id="email"
					name="email">
			</div>
			<div class="inputs">
				<label for="Phone">Phone</label> <input type="tel" id="phone"
					name="phone">
			</div>
			<div class="inputs">
				<label for="password">Password</label> <input type="password"
					id="password" name="password">
			</div>
			<div class="inputs">
				<label for="cpassword">Confirm Password</label> <input
					type="password" id="cpassword" name="cpassword">
			</div>
			
			<button type="submit">Register</button>
		</form>
	</div>
</body>
</html>