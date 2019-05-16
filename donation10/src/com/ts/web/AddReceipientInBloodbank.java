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
import com.ts.dao.ReceipientInBloodbankDAO;
import com.ts.dto.Donor;
import com.ts.dto.DonorsInBloodbank;
import com.ts.dto.ReceipientsInBloodbanks;
@WebServlet("/AddReceipientInBloodbank")
public class AddReceipientInBloodbank extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	     ReceipientInBloodbankDAO donorDao = new ReceipientInBloodbankDAO();
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		HttpSession session = request.getSession(true);
		int  bloodbankId = (int)session.getAttribute("bloodbankId");
		String name = request.getParameter("name");
		String phone = request.getParameter("phoneNumber");
		String city = request.getParameter("city").toLowerCase();
		String address = request.getParameter("address").toLowerCase();
		String bloodGroup = request.getParameter("bloodGroup");	
		int quantity = Integer.parseInt(request.getParameter("quantity"));
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
			ReceipientInBloodbankDAO r = new ReceipientInBloodbankDAO ();
			ReceipientsInBloodbanks rib = new ReceipientsInBloodbanks( name, phone,  city,  quantity,
					  bloodGroup, date1, bloodbankId,address);
			int x = r.register(rib);
			session.setAttribute("quantity", quantity);
			session.setAttribute("bloodGroup",bloodGroup);
			session.setAttribute("bloodbankId", bloodbankId);
		RequestDispatcher rd = request.getRequestDispatcher("UpdateReceipient");
		rd.forward(request, response);
		out.println("</body>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

