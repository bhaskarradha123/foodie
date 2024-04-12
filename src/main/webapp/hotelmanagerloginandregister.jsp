<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        * {
            padding: 0%;
            margin: 0%;

        }

        .header {
            height: 70px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            margin-left: 25px;
            line-height: 22px;
            width: 150px;
            align-items: center;
        }

        .header h1 {
            font-weight: bold;
            font-style: italic;
            letter-spacing: 3px;
        }

        .image-container img {
            width: 350px;
            height: 280px;
        }

        .dash {
            background-color: rgb(247, 243, 243);
            height: 668px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .login-container h2 {
            color: rgb(103, 103, 103);
            padding: 20px 0px;
            padding-bottom: 30px;
        }

        .link {
            text-decoration: none;
            border: 1px solid #3498db;
        }

        .login,
        .register {
            padding: 16px 50px;
            border-radius: 5px;
        }

        .login {
            background-color: #256FEF;
            color: white;
        }

        .register {
            color: #3498db;
        }

        .links {
            display: flex;
            gap: 20px;
            font-family: sans-serif;
        }

        .login:hover {
            background-color: #0455e0;
        }

        .register:hover {
            background-color: rgb(234, 232, 232);
        }

        .our {
            font-family: sans-serif;
            color: rgb(60, 60, 60);
            margin-top: 70px;
            letter-spacing: 1px;
        }

        .code {
            font-family: sans-serif;
            color: rgb(60, 60, 60);
            font-size: 12px;
            text-align: center;
            margin-top: 10px;
        }

        .footer {
            margin-left: 20px;
            line-height: 15px;
            position: absolute;
            bottom: 15px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Foodie</h1>
        <p>--restaurant Manager--</p>
    </div>

    <div class="dash">
        <div class="image-container">
            <img src="https://us.123rf.com/450wm/djvstock/djvstock1605/djvstock160508313/57352826-hotel-concept-with-icon-design-vector-illustration-10-eps-graphic.jpg?ver=6"
                alt="Foodie Partner Dashboard">
        </div>
        <div class="login-container">
            <h2>
                Restaurant Manager Dashboard
            </h2>
            <div class="links">
                <p><a href="managerlogin.jsp" class="link login">Login</a></p>
                <p><a href="hotelmanager.jsp" class="link register">Register</a></p>
            </div>
            <div class="footer">
                <p style="text-align: center;" class="our">By continuing, you agree to our</p>
                <p class="code">Terms of service | Privacy policy | Code of Conduct</p>
            </div>
        </div>
    </div>

</body>
</html>