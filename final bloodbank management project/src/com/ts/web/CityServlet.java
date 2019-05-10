package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

@WebServlet("/CityServlet")
public class CityServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String city = request.getParameter("city").toLowerCase();
		BloodbankDAO bankDao = new 	BloodbankDAO();
		List<Bloodbank> arrayList = bankDao.getBloodbankCity(city);
		out.print("<html>");
		out.println("<center><h1>city</h1></center>");
		if(!(arrayList.isEmpty())){
			HttpSession session = request.getSession(true);
			session.setAttribute("BloodbankData", arrayList);
		    RequestDispatcher rd = request.getRequestDispatcher("BloodbankByLocation.jsp");
		    rd.forward(request, response);
			
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>No bloodbanks are available..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("DonorHomePage.jsp");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
