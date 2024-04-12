package food_project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.FoodItemsCrud;
import food_project.dao.RestaurantCrud;
import food_project.dto.FoodItems;
import food_project.dto.Restaurant;

@WebServlet("/edit")
public class EditFoodItem extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		RestaurantCrud restaurant = new RestaurantCrud();
		Restaurant rest = restaurant.fetchById(Integer.parseInt(req.getParameter("restaurant_id")));
		FoodItems foodItems = new FoodItems(name, price);
		foodItems.setId(id);
		foodItems.setRestaurant(rest);
		FoodItemsCrud foodItemsCrud = new FoodItemsCrud();
		FoodItems item = foodItemsCrud.update(foodItems);
		if (item != null) {
			RestaurantCrud restaurantCrud = new RestaurantCrud();
			Restaurant r = restaurantCrud.fetchById(rest.getId());
			req.setAttribute("items", r);
			RequestDispatcher dis = req.getRequestDispatcher("fetchitems.jsp");
			dis.forward(req, resp);
		} else {
			System.out.println("else");
		}
	}
}
