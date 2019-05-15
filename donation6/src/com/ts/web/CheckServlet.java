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

import com.ts.dao.BloodbankDAO;
import com.ts.dao.DonorDAO;
import com.ts.dao.Donor_BloodbankDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;
import com.ts.dto.Donor_Bloodbank;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
			HttpSession session = request.getSession(true);
			String fname = (String)session.getAttribute("firstName");
			String lname = (String)session.getAttribute("lastName");
			String city = (String)session.getAttribute("city");
			String bloodGroup = (String)session.getAttribute("bloodGroup");
			String address = (String)session.getAttribute("address");
			DonorDAO d = new DonorDAO();
			Donor donor = d.getDonor(fname,lname,city,bloodGroup,address);
			if(donor != null){
				Date date = (Date) session.getAttribute("dateOfDonation");
				donor.setDateOfDonation(date);
				 DonorDAO donorDao  = new DonorDAO();
		         int x  = donorDao.editDonor(donor);  
		         System.out.println(x);
		         int bloodbankId = (int)session.getAttribute("bloodbankId");
			 		BloodbankDAO blooddao = new BloodbankDAO();
			 		Bloodbank bloodbank = blooddao.getBloodbank(bloodbankId);
		 	    Donor_BloodbankDAO dbdao =  new Donor_BloodbankDAO();
		 	    Donor_Bloodbank db = new Donor_Bloodbank(donor,bloodbank,date);
		 	    int z = dbdao.register(db);
		 	   out.println("<html>");
				out.println("<body>");
				 out.println("<h1 ><center><font size='10'><b>Added Successfully...</b></font> </center></h1>");
				out.println("</html>");
				RequestDispatcher rd = request.getRequestDispatcher("UpdateDonor");
				rd.include(request, response);
				 }
			else{
				RequestDispatcher rd = request.getRequestDispatcher("UpdateDonor");
				rd.include(request, response);
			}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
