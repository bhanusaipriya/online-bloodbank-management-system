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

import com.ts.dao.BloodbankDAO;
import com.ts.dao.DonorDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

@WebServlet("/BloodbankServlet")
public class BloodbankServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		out.print("<html>");	
		BloodbankDAO blooddao = new BloodbankDAO();
		Bloodbank bloodbank = blooddao.BloodbankByUserPass(userName,password);
		if(bloodbank != null){
			HttpSession session = request.getSession(true);
			session.setAttribute("userName", userName);
			session.setAttribute("password", password);
			session.setAttribute("bloodbankId", bloodbank.getBloodbankId());
			System.out.println(userName+" "+password+" "+bloodbank.getBloodbankId());
			RequestDispatcher rd = request.getRequestDispatcher("BloodbankHomePage.jsp");
			rd.include(request, response);
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("BloodbankLogin.html");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
