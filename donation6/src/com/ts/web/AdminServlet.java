package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.DonorDAO;
import com.ts.dto.Donor;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String user = request.getParameter("userName");
		String pass = request.getParameter("password");
		DonorDAO donorDao = new DonorDAO();
		Donor donor = donorDao.getDonorByUserPass(user,pass);
		
		out.print("<html>");		
		if(user.equalsIgnoreCase("MANAGER") && pass.equalsIgnoreCase("MANAGER123")){
			HttpSession session = request.getSession(true);
			session.setAttribute("userName", user);
			session.setAttribute("password", pass);
				RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
				rd.include(request, response);
		}
		else if(donor!=	null){
			
			out.print("<body>");
			out.print("<center><h1>This is admin login...</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.include(request, response);
			out.print("</body>");			
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
