package food_project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.CartCrud;
import food_project.dao.FoodItemsCrud;
import food_project.dto.Cart;
import food_project.dto.FoodItems;

@WebServlet("/remove")
public class RemoveItemFromCart extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		CartCrud cartCrud = new CartCrud();
		Cart cart = cartCrud.delete(id);
		if (cart != null) {
			req.setAttribute("dec", 1);
			RequestDispatcher dis = req.getRequestDispatcher("buy.jsp");
			dis.forward(req, resp);
		}
		System.out.println("hello");
	}

}
