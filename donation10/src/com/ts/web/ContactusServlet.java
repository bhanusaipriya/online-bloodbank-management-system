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

import com.ts.dao.ContactDAO;
import com.ts.dto.Contactus;
@WebServlet("/ContactusServlet")
public class ContactusServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobileno = request.getParameter("phone");
		String query = request.getParameter("query");
		
		Contactus contactus = new Contactus(name,email,mobileno,query);
		ContactDAO contactDao = new ContactDAO();
		int x = contactDao.register(contactus);
		RequestDispatcher rd = request.getRequestDispatcher("HomePage.html");
		rd.include(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

