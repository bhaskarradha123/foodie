package food_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.FoodItemsCrud;
import food_project.dto.FoodItems;

@WebServlet("/update")
public class UpdateFoodItem extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		FoodItemsCrud foodItemsCrud = new FoodItemsCrud();
		FoodItems foodItems = foodItemsCrud.fetchById(id);
		if(foodItems !=null) {
			req.setAttribute("item", foodItems);
			RequestDispatcher dis = req.getRequestDispatcher("update.jsp");
			dis.forward(req, resp);
		}
	}
}
