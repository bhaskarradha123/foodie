package food_project.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.FoodItemsCrud;
import food_project.dao.RestaurantCrud;
import food_project.dao.UserCrud;
import food_project.dto.FoodItems;
import food_project.dto.Restaurant;
import food_project.dto.User;

@WebServlet("/loginuser")
public class LoginUser extends HttpServlet {
	static int count;
	static String user;
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		user = email;
		UserCrud usercrud = new UserCrud();
		User user;
		try {
			user = usercrud.fetchByEmail(email);
			if(user.getPassword().equals(password)) {
				//call fetchAll present in restaurantcrud dipatch
				RestaurantCrud restaurantCrud = new RestaurantCrud();
				List<Restaurant> ls = restaurantCrud.fetchAll();
				req.setAttribute("list", ls);
				RequestDispatcher dis = req.getRequestDispatcher("fetch.jsp");
				dis.forward(req, resp);
				System.out.println("done");
			} else {
				count++;
				req.setAttribute("msg", "Please enter correct password");
				RequestDispatcher dis = req.getRequestDispatcher("login.jsp");
				dis.include(req, resp);
			}
		} catch (Exception e) {
			req.setAttribute("msg", "Please enter correct Email");
			RequestDispatcher dis = req.getRequestDispatcher("login.jsp");
			dis.include(req, resp);
		}
		System.out.println(count);
		if(count==3) {
			RequestDispatcher dis = req.getRequestDispatcher("forgotpassworduser.jsp");
			dis.forward(req, resp);
			count=0;
		}
		
		/*
		 * FoodItemsCrud foodItemsCrud = new FoodItemsCrud(); List<FoodItems> ls =
		 * foodItemsCrud.fetchAll(); for (FoodItems foodItems : ls) {
		 * System.out.println(foodItems.getName()); }
		 */	}
	public static String getUser() {
		return user;
	}
	public static void setUser(String user) {
		LoginUser.user = user;
	}
	
}
