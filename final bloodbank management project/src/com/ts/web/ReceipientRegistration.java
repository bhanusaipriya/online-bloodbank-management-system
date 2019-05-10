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
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;

import com.ts.dao.DonorDAO;
import com.ts.dao.ReceipientDAO;
import com.ts.dto.Donor;
import com.ts.dto.Receipient;
@WebServlet("/ReceipientRegistration")
public class ReceipientRegistration extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String location = request.getParameter("location");
		String address = request.getParameter("address");
		Receipient receipient = new Receipient (name,phone,location,address);
		ReceipientDAO rDao = new ReceipientDAO();
		int x = rDao.register(receipient);
		int receipientId = receipient.getReceipientId();
		session.setAttribute("receipientId",receipientId);
		System.out.println(receipientId);
		if(x > 0){
			out.println("<h1><center>Registration success...</center></h1>");
			RequestDispatcher rd = request.getRequestDispatcher("SearchForReceipient.html");
			rd.include(request, response);
		}
		else{
			out.println("<h1><center>Registration failure...</center></h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Receipient.html");
			rd.include(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

