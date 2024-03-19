package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.User.UserDetails;
import com.User.admindetails;

/**
 * Servlet implementation class adminloginServlet
 */
@WebServlet("/adminloginServlet")
public class adminloginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminemail=request.getParameter("adminemail");
		String adminpassword=request.getParameter("adminpassword");
		
		admindetails ad=new admindetails();
		ad.setAdminemail(adminemail);
		ad.setAdminpassword(adminpassword);
		
		UserDAO dao=new UserDAO(DBConnect.getConn());
		admindetails admin=dao.admindetails(ad);
		
		if(admin!=null) 
		{
			HttpSession session=request.getSession();
			session.setAttribute("userD", admin);
			response.sendRedirect("home.jsp");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("login-failed", "Invalid AdminEmail and Password!");
			response.sendRedirect("home.jsp");
		}
	}

}
