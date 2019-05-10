package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.BloodbankDAO;
import com.ts.dao.ReceipientDAO;
import com.ts.dao.Receipient_BloodbankDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Receipient;
import com.ts.dto.Receipient_Bloodbank;


@WebServlet("/QuantityServlet")
public class QuantityServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		out.print("<html>");
		int bloodbankId = (int) session.getAttribute("bloodbankId");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String group = (String)session.getAttribute("group");
		BloodbankDAO bloodbankDao =  new BloodbankDAO();
		Bloodbank bloodbank = bloodbankDao.getBloodbank(bloodbankId);
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
		String status = "false";
		 if(group.equals("apositive")){
	 	    	int ap =bloodbank.getApositive();
	 	    	if(ap-quantity < 0){
	 	    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	 	    		
	 	    	}
	 	    	else{
	 	    	bloodbank.setApositive(ap-quantity);
	 	    	status = "true";
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    	}
	 	    }
	 	    else if(group.equals("anegative")){
	 	    	int an =bloodbank.getAnegative();
                if(an-quantity < 0){
                	 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	 	    		
	 	    	}
                else{
	 	    	bloodbank.setAnegative(an-quantity);
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	status = "true";
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
                }
	 	    }
	 	    else if(group.equals("bpositive")){
	 	    	int bp =bloodbank.getBpositive();
                if(bp-quantity < 0){
                	 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
                }
                else{
	 	    	bloodbank.setBpositive(bp-quantity);
	 	    	status = "true";
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    }
	 	    }
	 	    else if(group.equals("bnegative")){
	 	    	int bn =bloodbank.getBnegative();
	 	    	 if(bn-quantity < 0){
	 	    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	                }
	 	    	 else{
	 	    	bloodbank.setBnegative(bn-quantity);
	 	    	status = "true";
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    }
	 	    }
	 	    else if(group.equals("opositive")){
	 	    	int op = bloodbank.getOpositive();
	 	    	 if(op-quantity < 0){
	 	    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	                }
	 	    	 else{
	 	    	bloodbank.setOpositive(op-quantity);
	 	    	status = "true";
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    	 }
	 	    }
	 	    else if(group.equals("onegative")){
	 	    	int on =bloodbank.getOnegative();
	 	    	 if(on-quantity < 0){
	 	    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	                }
	 	    	 else{
	 	    	bloodbank.setOnegative(on-quantity);
	 	    	status = "true";
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    	 }
	 	    }
	 	    else if(group.equals("abpositive")){
	 	    	int abp =bloodbank.getAbpositive();
	 	    	 if(abp-quantity < 0){
	 	    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	                }
	 	    	 else{
	 	    	bloodbank.setAbpositive(abp-quantity);
	 	    	status = "true";
	 	    	int z = bloodbankDao.editBloodbank(bloodbank);
	 	    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 	    	 }
	 	    }
	 	    else{
	 		    	int abn =bloodbank.getAbnegative();
	 		    	 if(abn-quantity < 0){
	 		    		 out.println("<h1><center>SORRY....your required quantity is not available</center></h1>");
	                 }
	 		    	 else{
	 		    	bloodbank.setAbnegative(abn-quantity);
	 		    	 out.println("<h1><center>you are successfully got the blood from bloodbank</center></h1>");
	 		    	int z = bloodbankDao.editBloodbank(bloodbank);
	 		    	status = "true";
	 		    	 }
	 		    }
		 int receipientId = (int) session.getAttribute("receipientId");
		 ReceipientDAO receipientdao = new ReceipientDAO();
		 Receipient receipient =  receipientdao.getReceipient(receipientId);
         Receipient_BloodbankDAO rbdao = new Receipient_BloodbankDAO();
         Receipient_Bloodbank rb = new Receipient_Bloodbank(bloodbank,receipient,status,quantity,date1,group);
         int y = rbdao.register(rb);
         RequestDispatcher rd = request.getRequestDispatcher("Continue.html");
			rd.include(request, response);
		out.println("</body>");
		out.println("</html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
