package food_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import food_project.dao.HotelManagerCrud;
import food_project.dto.HotelManager;

@WebServlet("/forgot")
public class ForgotPassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String cpassword = req.getParameter("password");
		HotelManagerCrud hotelManagerCrud = new HotelManagerCrud();
	    HotelManager manager;
		try {
			manager = hotelManagerCrud.fetchByEmail(email);
			if(manager !=null) {
		    	manager.setPassword(cpassword);
		    	manager.setConfirmpassword(cpassword);
		    	hotelManagerCrud.update(manager);
		    	RequestDispatcher dis = req.getRequestDispatcher("managerlogin.jsp");
		    	dis.forward(req, resp);
		    }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	}
}
