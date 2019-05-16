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
import com.ts.dao.ReceipientDAO;
import com.ts.dto.Donor;
import com.ts.dto.Receipient;

@WebServlet("/HospitalLogin")
public class HospitalLogin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		out.print("<html>");	
		System.out.println(userName+" "+password);
		ReceipientDAO rDao = new ReceipientDAO();
		Receipient r = rDao.ReceipientByUserPass(userName, password);
		if(r!=null){
			HttpSession session = request.getSession(true);
			session.setAttribute("userName", userName);
			session.setAttribute("password", password);
				RequestDispatcher rd = request.getRequestDispatcher("search.html");
				rd.forward(request, response);
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("HospialLogin.jsp");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
