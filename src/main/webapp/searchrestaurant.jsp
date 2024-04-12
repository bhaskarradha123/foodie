<%@page import="food_project.dto.Restaurant"%>
<%@page import="food_project.dto.FoodItems"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	height: 100vh;
	margin: 10px 70px 0% 70px;
}

.search-container {
	display: flex;
	gap: 10px
}

#search-input {
	padding: 8px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	width: 95%;
}

#search-button {
	padding: 10px 24px;
	font-size: 16px;
	background-color: #007bff;
	color: #fff;
	border: 1px solid #007bff;
	border-radius: 0 8px 8px 0;
	cursor: pointer;
}

#search-button:hover {
	background-color: #0359b5;
}

/*=========================Items==================  */
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
}

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
}

.fa-cart-plus {
	background: #0652DD;
}

.addtocart {
	display: block;
	border-radius: 100px;
	border: none;
	font-size: 1em;
	position: relative;
	background: #0652DD;
	cursor: pointer;
	height: 1.8em;
	width: 7em;
	overflow: hidden;
	transition: transform 0.1s;
	z-index: 1;
}

.addtocart:hover {
	transform: scale(1.1);
}

.pretext {
	color: #fff;
	background: #0652DD;
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: 'Quicksand', sans-serif;
	font-size: 16px;
}

i {
	margin-right: 10px;
}

.done {
	background: #be2edd;
	position: absolute;
	width: 100%;
	top: 0;
	left: 0;
	transition: transform 0.3s ease;
	transform: translate(-110%) skew(-40deg);
}

.posttext {
	background: #be2edd;
}

.fa-check {
	background: #be2edd;
}

.pretext a {
	color: white;
	text-decoration: none;
}

.item-lists {
	background-color: #dfdede;
	border-radius: 10px;
	margin-bottom: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 10px 0px 10px 0px;
		margin-top: 20px;
	
}

.item-m {
	color: grey;
		font-size: 13px;
	
}

.item-de {
	width: 400px;
}
.fa-cart-shopping{
font-size: 14px;
}

</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<form action="searchfood" method="post">
		<div class="search-container">
			<input type="text" name="search" id="search-input"
				placeholder="Type your search...">
			<button id="search-button" name="search">Search</button>
		</div>

		<%
		List<FoodItems> flist = (List<FoodItems>) request.getAttribute("foodlist");
		/* 		Restaurant restaurant = (Restaurant) request.getAttribute("restaurant");
		 */ for (FoodItems i : flist) {
		%>

		<%
		if (i.getName().equalsIgnoreCase("Biryani")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://media.istockphoto.com/id/1345624336/photo/chicken-biriyani.jpg?s=612x612&w=0&k=20&c=adU_N0P-1SKMQLZu5yu7aPknfLLgbViI8XILqLP92A4="
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.7</i></span>
					<p class="item-m">
						<i>Biryani</i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Dum Biryani")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOjzb5lgvln78HSHc0GFMRG8N5v5lv_xTJUS9fUt4t-ryo6DclRmHG928694YHYqLCoEY&usqp=CAU"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.7</i></span>
					<p class="item-m">
						<i>Dum Biryani served with salan, raita and salad.</i>
					</p>
				</div>


				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Mutton Biryani")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="data:image/jpeg;base64,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"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>4.0</i></span>
					<p class="item-m">
						<i>Special Mutton Biryani ( Mutton Biryani Serves with Extra
							12 Piece of Mutton, Mirchi Ka Salan, Dahi Ka Chutney, Salad).</i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>


		<%
		if (i.getName().equalsIgnoreCase("Pizza")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxhHeMWjNz2KjcQUopHvfesXo6IpIkwvLBMA&usqp=CAU"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>3.5</i></span>
					<p class="item-m">
						<i>Pizza topped with our herb-infused signature pan sauce and
							100% mozzarella cheese. A classic treat for all cheese lovers out
							there! </i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Veg biryani")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://static.wixstatic.com/media/91e241_0cf76aa5613b4055be2f922f71edeaa0~mv2.jpg/v1/fill/w_560,h_372,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Ustaadi%20Hyderabadi%20Veg%20Biryani.jpg"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>4.2</i></span>
					<p class="item-m">
						<i>A Wholesome And Flavorful Vegetarian Meal Perfect For A
							Family Feast. </i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>

		<%
		if (i.getName().equalsIgnoreCase("Burger")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://images.unsplash.com/photo-1571091718767-18b5b1457add?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>4.2</i></span>
					<p class="item-m">
						<i>Burgers, American, Turkish, Portuguese, Continental,
							Snacks.</i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Shawarma")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://www.licious.in/blog/wp-content/uploads/2022/06/shutterstock_1339636625-1-750x750.jpg"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.7</i></span>
					<p class="item-m">
						<i>Succulent chicken shawarma wrapped in thin, soft rumali roti.</i>
					</p>
				</div>


				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
						<h3>
						<button class="addtocart">
							<div class="pretext"><i class="fa-solid fa-cart-shopping"></i>
								<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						</h3>				</div>
			</div>
		</div>

		<%
		}
		%>
			<%
		if (i.getName().equalsIgnoreCase("sandwich")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://mytastycurry.com/wp-content/uploads/2018/06/Egg-and-cheese-sandwich-500x375.jpg"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.7</i></span>
					<p class="item-m">
						<i>A no frills chicken sandwich with diced chicken, mayonnaise and lettuce [Energy: 474 kcal, Protein: 38.2g, Carbohydrates: 36.6g, Fiber: 14.9g, Fat: 18.8g].</i>
					</p>
				</div>


				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
						<h3>
						<button class="addtocart">
							<div class="pretext"><i class="fa-solid fa-cart-shopping"></i>
								<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						</h3>				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Ice Cream")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="data:image/jpeg;base64,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"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.7</i></span>
					<p class="item-m">
						<i>Waffle, Desserts, Ice Cream, Beverages.</i>
					</p>
				</div>


				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
						<h3>
						<button class="addtocart">
							<div class="pretext"><i class="fa-solid fa-cart-shopping"></i>
								<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						</h3>				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("cake") ) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://devtechnosys.com/images/2023/top-platforms/best-ckae-delivery-apps/banner_img.webp"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>4.2</i></span>
					<p class="item-m">
						<i>Chocoholic Cake [1/2kg]. </i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext"><i class="fa-solid fa-cart-shopping"></i>
								<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						</h3>				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Noodles")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://imgmedia.lbb.in/media/2019/04/5ca2f850657a95676c7c34fd_1554184272818.jpg"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i></i><span><i>4.2</i></span>
					<p class="item-m">
						<i>A delectable Chinese delight packed with flavors, perfect for all noodle enthusiasts.. </i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext"><i class="fa-solid fa-cart-shopping"></i>
								<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						</h3>				</div>
			</div>
		</div>

		<%
		}
		%>
		<%
		if (i.getName().equalsIgnoreCase("Orange juice")) {
		%>
		<div class="item-lists">
			<div>
				<img
					src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/a1a5015eff25479e667c7fda6208b5e0"
					alt="">
			</div>
			<div class="item-list">
				<div class="item-de">
					<h1 class="item-name"><%=i.getName()%></h1>
					<i class="fa-sharp fa-solid fa-star"></i><span><i>3.5</i></span>
					<p class="item-m">
						<i>Fresh orange juice from imported oranges,( we wont add any colors or preservatives) packed in food grade leak proof containers.</i>
					</p>
				</div>
				<div>
					<h1>
						<span><i><i class="fa-solid fa-indian-rupee-sign"></i></i></span><%=i.getPrice()%></h1>
					<h3>
						<button class="addtocart">
							<div class="pretext">
								<i class="fa-solid fa-cart-shopping"></i> <a
									href="addtocart?id=<%=i.getId()%>">Add to cart</a>
							</div>
						</button>
						<h3>
				</div>
			</div>
		</div>

		<%
		}
		%>
		
		
		
		
		
		
		
		
		
		
		





		<%-- <div class="item-lists">
			<div>
				<img
					src="https://media.istockphoto.com/id/1345624336/photo/chicken-biriyani.jpg?s=612x612&w=0&k=20&c=adU_N0P-1SKMQLZu5yu7aPknfLLgbViI8XILqLP92A4="
					alt="">
			</div>
			<div class="item-list">
				<div>
					<h1 class="item-name"><%=i.getName()%></h1>
				</div>
				<div>
					<h1><%=i.getPrice()%></h1>
					<h3>
						<button>
							<a href="addtocart?id=<%=i.getId()%>">Add to cart</a>
						</button>
						<h3>
				</div>
			</div>
		</div>
 --%>
		<%
		}
		%>

	</form>

</body>
</html>