<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);
@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);


body, html {
	height: 100%;
}

body {
	font-family: 'Open Sans';
	font-weight: 100;
	display: flex;
	overflow: hidden;
}


input {
    ::-webkit-input-placeholder {
        color: rgba(255, 255, 255, 0.7);
    }

    ::-moz-placeholder {
        color: rgba(255, 255, 255, 0.7);
    }

    :-ms-input-placeholder {
        color: rgba(255, 255, 255, 0.7);
    }

    &:focus {
        outline: 0 transparent solid;

        ::-webkit-input-placeholder {
            color: rgba(0, 0, 0, 0.7);
        }

        ::-moz-placeholder {
            color: rgba(0, 0, 0, 0.7);
        }

        :-ms-input-placeholder {
            color: rgba(0, 0, 0, 0.7);
        }
    }
}

.login-form { //
	background: #222; //
	box-shadow: 0 0 1rem rgba(0, 0, 0, 0.3);
	min-height: 10rem;
	margin: auto;
	max-width: 50%;
	padding: .5rem;
}

.login-text { //
	 //background: hsl(40,30,60);
    //border-bottom: .5rem solid white;
    color: white;
    font-size: 1.5rem;
    margin: 0 auto;
    max-width: 50%;
    padding: .5rem;
    text-align: center;

    //text-shadow: 1px -1px 0 rgba(0,0,0,0.3);
    .fa-stack-1x {
        color: black;
    }
}
.login-username, .login-password {
	background: transparent;
	border: 0 solid;
	border-bottom: 1px solid rgba(white, .5);
	color: white;
	display: block;
	margin: 1rem;
	padding: .5rem;
	transition: 250ms background ease-in;
	width: calc(100% - 3rem); &: focus { background : white;
	color: black;
	transition: 250ms background ease-in;
}
.login-username:hover{background-color: white;}

}
.login-forgot-pass {
	bottom: 0;
	color: white;
	cursor: pointer;
	display: block;
	font-size: 85%;
	left: -12px;
	opacity: 0.6;
	padding: .5rem;
	position: absolute;
	text-align: center;
	width: 100%;
	top: 73%;
	padding-top:20px;
	&:
	hover
	{
	opacity
	:
	1;
}

}
.login-submit {
	border: 1px solid white;
	background: transparent;
	color: white;
	display: block;
	margin: 1rem auto;
	min-width: 1px;
	padding: .25rem;
	transition: 250ms background ease-in;
	 &: hover ,
	  & : focus {
        background : white;
	color: black;
	transition: 250ms background ease-in;
	
}

}
[class*=underlay] {
	left: 0;
	min-height: 100%;
	min-width: 100%;
	position: fixed;
	top: 0;
}

.underlay-photo {
	animation: hue-rotate 6s infinite;
	background:
		url('https://wallpapers.com/images/hd/food-4k-anl1yr892h6ccjeb.jpg');
	background-size: cover;
	-webkit-filter: grayscale(30%);
	z-index: -1;
}

.underlay-black {
	background: rgba(0, 0, 0, 0.7);
	z-index: -1;
}

.login-username {
	width: 300px;
}

.login-submit {
	border-radius: 20px;
	padding: 10px 20px;
	font-size: 14px;
}
.login-submit:hover{
background-color: white;
color:black;
}
.login-forgot-pass:hover{
color:white;
}



.warning {
	color: red;
	font-weight: bold;
	font-style: italic;
}
h1{
color:white;
text-align: center;
}
</style>
</head>
<body>

	<!-- <form action="login" method="post">
		<table>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>
	</form> -->
	<%
	String warning = (String) request.getAttribute("msg");
	%>
	<form action="loginuser" method="post" class="login-form">
			<h1>User Login</h1>
	
		<p class="login-text">
			<span class="fa-stack fa-lg"> <i
				class="fa fa-circle fa-stack-2x"></i> <i
				class="fa fa-lock fa-stack-1x"></i>
			</span>
		</p>
		<input type="email" class="login-username" autofocus="true"
			required="true" name="email" placeholder="Email" /> <input
			type="password" class="login-password" required="true"
			placeholder="Password" name="password" />
		<p class="warning">
			<%
			if (warning != null) {
			%>
			<%=warning%>
			<%
			}
			%>
		</p>
		<input type="submit" name="Login" value="Login" class="login-submit" />
	</form>
	<a href="forgotpassworduser.jsp" class="login-forgot-pass">forgot password?</a>
	<div class="underlay-photo"></div>
	<div class="underlay-black"></div>
</body>
</html>