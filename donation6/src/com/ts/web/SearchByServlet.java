package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.DonorDAO;
import com.ts.dto.Donor;
@WebServlet("/SearchByServlet")
public class SearchByServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		String joinDate1 = request.getParameter("date");
		SimpleDateFormat sdf = new SimpleDateFormat("YYY-MM-DD");
		java.util.Date date = null;
		try {
			date = sdf.parse(joinDate1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date  joinDate11= new java.sql.Date(date.getTime());
		DonorDAO donorDao = new DonorDAO();
		int id = (int) session.getAttribute("donorId");
		Donor donor = donorDao.getDonor(id);
		System.out.println(joinDate11+" "+donor.getDateOfDonation());
		int days = 0;
		if(joinDate11.after(donor.getDateOfDonation())){
			long diff = (joinDate11.getTime())-(donor.getDateOfDonation().getTime());
			 days = (int) (diff/(86400000));
		}
		else{
			long diff = (donor.getDateOfDonation().getTime())-(joinDate11.getTime());
			 days = (int) (diff/(86400000));
		}
		System.out.println(days);
		session.setAttribute("days", days);
		RequestDispatcher rd = request.getRequestDispatcher("PrintDate.jsp");
		rd.include(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

