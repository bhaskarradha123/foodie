package food_project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.UserCrud;
import food_project.dto.User;

@WebServlet("/userregister")
public class UserMain extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmpassword");
		String address = req.getParameter("address");
		double wallet = Double.parseDouble(req.getParameter("wallet"));
		PrintWriter writer = resp.getWriter();
		UserCrud usercrud = new UserCrud();
		User user = new User(firstName, lastName, email, phone, confirmPassword, password, wallet);
		try {
			usercrud.save(user);
			RequestDispatcher dis = req.getRequestDispatcher("login.jsp");
			dis.forward(req, resp);
		} catch (Exception e) {
			RequestDispatcher dis = req.getRequestDispatcher("userregister.jsp");
			dis.include(req, resp);
		}
	}
}
