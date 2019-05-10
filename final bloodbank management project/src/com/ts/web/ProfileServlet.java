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
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		String userName = (String)session.getAttribute("userName");
		System.out.println(userName);
		int donorId =  (Integer)session.getAttribute("donorId");
		out.print("<html>");
		DonorDAO d = new DonorDAO();
		Donor donor = d.getDonor(donorId);
		request.setAttribute("donor", donor);
		if(donor!=null) {
			RequestDispatcher rd = request.getRequestDispatcher(
				"Profile.jsp");
			rd.include(request, response);
					}
		else {
			RequestDispatcher rd = request.getRequestDispatcher(
					"DonorHomePage.jsp");
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
