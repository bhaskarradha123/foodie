<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>body {
    background: rgb(34, 193, 195);
    background: linear-gradient(0deg, rgba(34, 193, 195, 1) 0%, rgba(121, 32, 153, 1) 86%);
    background-attachment: fixed;
    margin: 0;
    font-family: 'Poppins', sans-serif;
}

#form {
    width: 400px;
    margin: 20px auto 0 auto;
    background-color: whitesmoke;
    border-radius: 5px;
    padding: 30px;
}

h1 {
    text-align: center;
    color: #792099;
}

#form button {
    background-color: #792099;
    color: white;
    border: 1px solid #792099;
    border-radius: 5px;
    padding: 10px;
    margin: 20px 0px;
    cursor: pointer;
    font-size: 20px;
    width: 100%;
}

#form button:hover {
    color: #792099;
    background-color: whitesmoke;
    border: 2px solid whitesmoke;
    transition-duration: 1s;
    font-weight: bold;
}

.inputs {
    display: flex;
    flex-direction: column;
    margin-bottom: 15px;
}

.inputs input {
    border-radius: 5px;
    font-size: 16px;
    margin-top: 5px;
    padding: 10px;
    border: 1px solid rgb(34, 193, 195);
}

.inputs label {
    font-weight: bold;
    color: rgb(1, 22, 104);
    font-style: oblique;
}</style>
</head>
<body>
	<div class="container">
		<form action="managerregister" id="form" method="post">
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
					name="phone" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits">
			</div>
			<div class="inputs">
				<label for="password">Password</label> <input type="password"
					id="password" name="password">
			</div>
			<div class="inputs">
				<label for="cpassword">Confirm Password</label> <input
					type="password" id="cpassword" name="cpassword">
			</div>
			<div class="inputs">
				<label for="restaurant">Restaurant Id</label> <input
					type="number" id="restaurant" name="restaurant">
			</div>
			<button type="submit">Register</button>
		</form>
	</div>
</body>
</html>