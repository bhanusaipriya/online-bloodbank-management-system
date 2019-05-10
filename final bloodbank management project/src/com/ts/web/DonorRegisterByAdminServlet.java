package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.DonorDAO;
import com.ts.dto.Donor;
@WebServlet("/DonorRegisterByAdminServlet")
public class DonorRegisterByAdminServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phoneNumber = request.getParameter("phoneNumber");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		int age = Integer.parseInt(request.getParameter("age"));
		String healthstatus = request.getParameter("health");
		String userName = request.getParameter("userName");
		String password = request.getParameter("pwd");
		String bloodGroup = request.getParameter("bloodGroup");	
		Donor donor = new Donor(firstName, lastName, phoneNumber, city,  gender,  email,bloodGroup, healthstatus,userName, password,age);
		DonorDAO donorDao = new DonorDAO();
		int x = donorDao.register(donor);
		request.setAttribute("x", x);
		RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
		rd.include(request, response);
		  out.println("<h3><CENTER>Registration Success ....</CENTER></H3>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

