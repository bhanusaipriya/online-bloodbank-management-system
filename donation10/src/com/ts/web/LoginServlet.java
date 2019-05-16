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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		out.print("<html>");	
		if(userName.equalsIgnoreCase("MANAGER") && password.equalsIgnoreCase("MANAGER123")) {
			out.print("<body>");
			out.println("<h1><center>THIS is Donor page...</center></h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.include(request, response);
			out.print("</body>");	
		}
		else{
		DonorDAO donorDao = new DonorDAO();
		Donor donor = donorDao.getDonorByUserPass(userName,password);	
		if(donor!=null){
			HttpSession session = request.getSession(true);
			session.setAttribute("userName", userName);
			session.setAttribute("password", password);
			session.setAttribute("donorId", donor.getDonorId());
				RequestDispatcher rd = request.getRequestDispatcher("DonorHomePage.jsp");
				rd.forward(request, response);
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
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
