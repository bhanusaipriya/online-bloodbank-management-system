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

@WebServlet("/UpdateDonor")
public class UpdateDonor extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String group = (String)session.getAttribute("bloodGroup");
		int  bloodbankId = (int)session.getAttribute("bloodbankId");
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
	 	    System.out.println(bloodbank.getBpositive());
	 	   int y = blooddao.editBloodbank(bloodbank);
	 	   System.out.println(y);
		 RequestDispatcher rd = request.getRequestDispatcher("DonorsInBloodbank.jsp");
			rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
