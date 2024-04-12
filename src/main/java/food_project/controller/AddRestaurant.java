package food_project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.RestaurantCrud;
import food_project.dto.Restaurant;

@WebServlet("/addrestaurant")
public class AddRestaurant extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String address = req.getParameter("address");
		long phone = 	Long.parseLong(req.getParameter("phone"));
		String email = req.getParameter("email");
		RestaurantCrud restaurantCrud = new RestaurantCrud();
		Restaurant rs = restaurantCrud.save(new Restaurant(name, address, phone, email));
		if(rs !=null) {
			System.out.println("yes");
		}
	}
}
