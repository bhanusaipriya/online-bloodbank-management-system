package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.DonorDAO;
import com.ts.dto.Donor;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		DonorDAO donorDao = new DonorDAO();
		PrintWriter out = response.getWriter();
		out.println("<html>");
		String firstName = request.getParameter("firstName").toLowerCase();
		String lastName = request.getParameter("lastName").toLowerCase();
		String phoneNumber = request.getParameter("phoneNumber");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String address = request.getParameter("address").toLowerCase();
		int age = Integer.parseInt(request.getParameter("age"));
		String userName = request.getParameter("userName");
		String password = request.getParameter("pwd");
		String bloodGroup = request.getParameter("bloodGroup");	
		System.out.println(firstName+" "+lastName+" "+phoneNumber+" "+gender+" "+email+" "+ city+" "+address+" "+ age+" "+userName+" "+password+" "+bloodGroup);
		List<Donor> donorlist = donorDao.getAllDonors();
		int c = 0;
		for(Donor d:donorlist){
			if(d.getUserName().equals(userName)){
				c++;
			}
		}
		if(c > 0){
			out.println("<body>");
			out.print("<h1 style='color:Blue;'><center>Sorry.. this username already exists</center></h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.include(request, response);
			out.println("</body>");
		}
		else{
		Donor donor = new Donor(firstName, lastName, phoneNumber, city,  gender,  email,bloodGroup,userName, password,age,address);
		int x = donorDao.register(donor);
		out.println("<h1><style='color:Blue;'><center>Registered successfully..</center></h1>");
		RequestDispatcher rd = request.getRequestDispatcher("HomePage.html");
		rd.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

