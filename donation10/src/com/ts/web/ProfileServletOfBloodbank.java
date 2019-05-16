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
@WebServlet("/ProfileServletOfBloodbank")
public class ProfileServletOfBloodbank extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		int bloodbankId =  (Integer)session.getAttribute("bloodbankId");
		out.print("<html>");
	   BloodbankDAO d = new BloodbankDAO();
		Bloodbank bloodbank = d.getBloodbank(bloodbankId);
		if(bloodbank!=null) {
			session.setAttribute("bankData", bloodbank);
			System.out.println(bloodbank.getName());
			RequestDispatcher rd = request.getRequestDispatcher(
				"ProfileOfBloodbank.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher(
					"BloodbankHomePage.jsp");
			rd.include(request, response);
			out.println("<h3><center>Record not found</center></h3>");
		}

		out.println("</body>");
		out.println("</html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
