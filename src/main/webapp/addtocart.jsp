<%@page import="food_project.dto.Restaurant"%>
<%@page import="java.util.List"%>
<%@page import="food_project.dao.RestaurantCrud"%>
<%@page import="food_project.dto.FoodItems"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>/*=========================Items==================  */
.item-lists {
	display: flex;
	gap: 20px
}

img {
	width: 250px;
	border-radius: 10px;
}

.item-list {
	display: flex;
	align-items: flex-start;
	justify-content: center;
	gap: 20px;
}

.item-name {
	width: 400px;
}</style>
</head>
<body>
	<%
	FoodItems food = (FoodItems) request.getAttribute("additem");
	%>
	<form>
		<div class="item-lists">
			<div>
				<img
					src="https://media.istockphoto.com/id/1345624336/photo/chicken-biriyani.jpg?s=612x612&w=0&k=20&c=adU_N0P-1SKMQLZu5yu7aPknfLLgbViI8XILqLP92A4="
					alt="">
			</div>
			<div class="item-list">
				<div>
					<h1 class="item-name"><%=food.getName()%></h1>
				</div>
				<div>
					<h1><%=food.getPrice()%></h1>
				</div>
			</div>
		</div>
		<td><button>
				<a href="fetch">Add More</a>
			</button></td>
	</form>
</body>
</html>