package com.ts.web;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.DonorDAO;
import com.ts.dao.DonorsInBloodbankDAO;
import com.ts.dto.Donor;
import com.ts.dto.DonorsInBloodbank;
@WebServlet("/AdddonorInBloodbank")
public class AdddonorInBloodbank extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		DonorDAO donorDao = new DonorDAO();
		PrintWriter out = response.getWriter();
		out.println("<html>");
		HttpSession session = request.getSession(true);
		int  bloodbankId = (int)session.getAttribute("bloodbankId");
		String firstName = request.getParameter("firstName").toLowerCase();
		String lastName = request.getParameter("lastName").toLowerCase();
		String phoneNumber = request.getParameter("phoneNumber");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String city = request.getParameter("city").toLowerCase();
		String address = request.getParameter("address").toLowerCase();
		int age = Integer.parseInt(request.getParameter("age"));
		String bloodGroup = request.getParameter("bloodGroup");	
		LocalDateTime dateTime = LocalDateTime.now(); // gets the current date and time  
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
		Date date = null;
		 try {
			 date=new SimpleDateFormat("yyyy-MM-dd").parse(dateTime.format(formatter));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		 java.sql.Date  date1= new java.sql.Date(date.getTime());
			out.println("</body>");
			DonorsInBloodbankDAO db = new DonorsInBloodbankDAO();
		DonorsInBloodbank donorb = new DonorsInBloodbank(firstName, lastName,  phoneNumber,  city,  age, gender,
				 email,  bloodGroup, bloodbankId,date1,address);
		int x = db.register(donorb);
		System.out.println(x);
		session.setAttribute("firstName", firstName);
		session.setAttribute("lastName", lastName);
		session.setAttribute("address",address);
		session.setAttribute("bloodGroup", bloodGroup);
		session.setAttribute("city",city );
		session.setAttribute("dateOfDonation",date1);

		RequestDispatcher rd = request.getRequestDispatcher("CheckServlet");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

