package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;
import com.ts.dto.Donor_Bloodbank;
import com.ts.dao.BloodbankDAO;
import com.ts.dao.DonorDAO;
import com.ts.dao.Donor_BloodbankDAO;

@WebServlet("/DonateBloodServlet")
public class DonateBloodServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		HttpSession session = request.getSession(true);
		String userName = (String)session.getAttribute("userName");
		DonorDAO donordao = new DonorDAO();
		Donor donor = donordao.getDonor(userName);
		System.out.println(donor.getBloodGroup());
		if(donor.getHealthstatus().toLowerCase().equals("notfine")){
			RequestDispatcher rd = request.getRequestDispatcher("Status.jsp");
			rd.include(request, response);
		}
		else{
		String group = donor.getBloodGroup();
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
		 if(donor.getDateOfDonation() == null){
			 donor.setDateOfDonation(date1);
			 DonorDAO donorDao  = new DonorDAO();
	         int x  = donorDao.editDonor(donor);   
	         int bloodbankId = Integer.parseInt(request.getParameter("bloodbankId"));
	 		BloodbankDAO blooddao = new BloodbankDAO();
	 		Bloodbank bloodbank = blooddao.getBloodbank(bloodbankId);
	 	    if(group.equals("apositive")){
	 	    	int ap =bloodbank.getApositive();
	 	    	ap = ap + 1;
	 	    	bloodbank.setApositive(ap);
	 	    }
	 	    else if(group.equals("anegative")){
	 	    	int an =bloodbank.getAnegative();
	 	    	bloodbank.setAnegative(an+1);
	 	    }
	 	    else if(group.equals("bpositive")){
	 	    	int bp =bloodbank.getBpositive();
	 	    	bp = bp + 1;
	 	    	bloodbank.setBpositive(bp);
	 	    }
	 	    else if(group.equals("bnegative")){
	 	    	int bn =bloodbank.getBnegative();
	 	    	bloodbank.setBnegative(bn+1);
	 	    }
	 	    else if(group.equals("opositive")){
	 	    	int op =bloodbank.getOpositive();
	 	    	bloodbank.setOpositive(op+1);
	 	    }
	 	    else if(group.equals("onegative")){
	 	    	int on =bloodbank.getOnegative();
	 	    	bloodbank.setOnegative(on+1);
	 	    }
	 	    else if(group.equals("abpositive")){
	 	    	int abp =bloodbank.getAbpositive();
	 	    	bloodbank.setAbpositive(abp+1);
	 	    }
	 	    else{
	 		    	int abn =bloodbank.getAbnegative();
	 		    	bloodbank.setAbnegative(abn+1);
	 		    }
	 	    int y = blooddao.editBloodbank(bloodbank); 
	 	    Donor_BloodbankDAO dbdao =  new Donor_BloodbankDAO();
	 	    Donor_Bloodbank db = new Donor_Bloodbank(donor,bloodbank,date1);
	 	    int z = dbdao.register(db);
			out.println("</html>");
			RequestDispatcher rd = request.getRequestDispatcher("message1.jsp");
			rd.include(request, response);
		 }
		 System.out.println(date1+" "+donor.getDateOfDonation());
		 long diff = ((date1.getTime()) -(donor.getDateOfDonation().getTime()));
		 int days = (int) (diff/(86400000));
		 System.out.println(days);
		 if(days <= 90 ){
			 session.setAttribute("days", days);
			 RequestDispatcher rd = request.getRequestDispatcher("PrintDate.jsp");
				rd.include(request, response);
		 }	
		 else{
		donor.setDateOfDonation(date1);
		 DonorDAO donorDao  = new DonorDAO();
         int x  = donorDao.editDonor(donor);   
         int bloodbankId = Integer.parseInt(request.getParameter("bloodbankId"));
 		BloodbankDAO blooddao = new BloodbankDAO();
 		Bloodbank bloodbank = blooddao.getBloodbank(bloodbankId);
 	    if(group.equals("apositive")){
 	    	int ap =bloodbank.getApositive();
 	    	ap = ap + 1;
 	    	bloodbank.setApositive(ap);
 	    }
 	    else if(group.equals("anegative")){
 	    	int an =bloodbank.getAnegative();
 	    	bloodbank.setAnegative(an+1);
 	    }
 	    else if(group.equals("bpositive")){
 	    	int bp =bloodbank.getBpositive();
 	    	bp = bp + 1;
 	    	bloodbank.setBpositive(bp);
 	    }
 	    else if(group.equals("bnegative")){
 	    	int bn =bloodbank.getBnegative();
 	    	bloodbank.setBnegative(bn+1);
 	    }
 	    else if(group.equals("opositive")){
 	    	int op =bloodbank.getOpositive();
 	    	bloodbank.setOpositive(op+1);
 	    }
 	    else if(group.equals("onegative")){
 	    	int on =bloodbank.getOnegative();
 	    	bloodbank.setOnegative(on+1);
 	    }
 	    else if(group.equals("abpositive")){
 	    	int abp =bloodbank.getAbpositive();
 	    	bloodbank.setAbpositive(abp+1);
 	    }
 	    else{
 		    	int abn =bloodbank.getAbnegative();
 		    	bloodbank.setAbnegative(abn+1);
 		    }
 	    int y = blooddao.editBloodbank(bloodbank); 
 	    Donor_BloodbankDAO dbdao =  new Donor_BloodbankDAO();
 	    Donor_Bloodbank db = new Donor_Bloodbank(donor,bloodbank,date1);
 	    int z = dbdao.register(db);
		out.println("</html>");
		RequestDispatcher rd = request.getRequestDispatcher("message1.jsp");
		rd.include(request, response);
		 }
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
