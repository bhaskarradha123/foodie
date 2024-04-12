<%@page import="food_project.dto.FoodItems"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

        input[type="text"],
        input[type="number"] {
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
	<%
	FoodItems foodItems = (FoodItems) request.getAttribute("item");
	%>
	
	
	  <form action="edit" method="post">
        <div class="main">
            <div class="main-s">
                <table class="table">
                <tr>
                        <td>Item id :</td>
                        <td><input type="number" name="id" id="id" value="<%=foodItems.getId()%>"></td>
                    </tr>
                
                    <tr>
                        <td>Item Name :</td>
                        <td><input type="text" name="name" id="name" value="<%=foodItems.getName()%>"></td>
                    </tr>
                    <tr>
                        <td>Price :</td>
                        <td><input type="number" name="price" id="price" value="<%=foodItems.getPrice()%>"></td>
                    </tr>
                    <tr>
                        <td>Restaurant ID :</td>
                        <td><input type="number" name="restaurant_id" id="restaurant_id" value="<%=foodItems.getRestaurant().getId()%>"></td>
                    </tr>
                </table>
                <div class="btn">
                    <input type="submit" name="addfooditems" value="Update Item">
                </div>
            </div>
        </div>
    </form>
	
	
	
	<%-- <form action="edit" method="post">
		<table>
			<tr>
				<td>ID :</td>
				<td><input type="number" name="id" id="id"
					value="<%=foodItems.getId()%>"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" id="name"
					value="<%=foodItems.getName()%>"></td>

			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price" id="price"
					value="<%=foodItems.getPrice()%>"></td>
			</tr>
		</table>
		<input type="submit" name="update">
	</form> --%>
</body>
</html>