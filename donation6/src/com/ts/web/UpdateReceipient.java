package com.ts.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.BloodbankDAO;
import com.ts.dto.Bloodbank;

@WebServlet("/UpdateReceipient")
public class UpdateReceipient extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String group = (String)session.getAttribute("bloodGroup");
		String status = (String)session.getAttribute("status");
		int quantity = (int)session.getAttribute("quantity");
		int  bloodbankId = (int)session.getAttribute("bloodbankId");
	 		BloodbankDAO blooddao = new BloodbankDAO();
	 		Bloodbank bloodbank = blooddao.getBloodbank(bloodbankId);
	 	    if(group.equals("apositive")){
	 	    	int ap =bloodbank.getApositive();
	 	    	ap = ap -quantity;
	 	    	bloodbank.setApositive(ap);
	 	    }
	 	    else if(group.equals("anegative")){
	 	    	int an =bloodbank.getAnegative();
	 	    	an = an - quantity;
	 	    	bloodbank.setAnegative(an);
	 	    }
	 	    else if(group.equals("bpositive")){
	 	    	int bp =bloodbank.getBpositive();
	 	    	bp = bp - quantity;
	 	    	bloodbank.setBpositive(bp);
	 	    }
	 	    else if(group.equals("bnegative")){
	 	    	int bn =bloodbank.getBnegative();
	 	    	bloodbank.setBnegative(bn-quantity);
	 	    }
	 	    else if(group.equals("opositive")){
	 	    	int op =bloodbank.getOpositive();
	 	    	bloodbank.setOpositive(op-quantity);
	 	    }
	 	    else if(group.equals("onegative")){
	 	    	int on =bloodbank.getOnegative();
	 	    	bloodbank.setOnegative(on-quantity);
	 	    }
	 	    else if(group.equals("abpositive")){
	 	    	int abp =bloodbank.getAbpositive();
	 	    	bloodbank.setAbpositive(abp-quantity);
	 	    }
	 	   else{
		    	int abn =bloodbank.getAbnegative();
		    	bloodbank.setAbnegative(abn-quantity);
		    }
	 	    System.out.println(bloodbank.getBpositive());
	 	   int y = blooddao.editBloodbank(bloodbank);
		 RequestDispatcher rd = request.getRequestDispatcher("ReceipientInBloodbank.jsp");
			rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
