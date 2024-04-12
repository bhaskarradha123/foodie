	package food_project.controller;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/addfooditems")
public class AddFoodItems extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String itemname = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		int id = Integer.parseInt(req.getParameter("id"));
		List<FoodItems> al = new ArrayList<>();
		al.add(new FoodItems(itemname, price));
		FoodItemsCrud foodItemsCrud = new FoodItemsCrud();
		foodItemsCrud.save(al, id);
		List<FoodItems> list = foodItemsCrud.fetchAll();
		RestaurantCrud restaurantCrud = new RestaurantCrud();
		Restaurant r = restaurantCrud.fetchById(id);
		req.setAttribute("items", r);
		RequestDispatcher dis = req.getRequestDispatcher("fetchitems.jsp");
		dis.forward(req, resp);
	}
}
