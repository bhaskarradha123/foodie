<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .payment-confirmation {
            text-align: center;
            line-height: 35px;
        }


        .checkmark-container {
            margin-top: 20px;
        }

        .checkmark {
            font-size: 40px;
            color: green;
        }
    </style>
</head>
<body>
 <div class="payment-confirmation">
        <h2>Payment Completed <br>Your Order is Placed SuccessFully</h2>
        <div class="checkmark-container">
            <div class="checkmark">&#10003;</div>
        </div>
        
    </div>
</body>
</html>