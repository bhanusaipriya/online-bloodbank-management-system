package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.BloodbankDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

@WebServlet("/AddbloodbankServlet")
public class AddbloodbankServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String phone = request.getParameter("phoneNumber");
		int quantityofApos =Integer.parseInt(request.getParameter("quantityofA+ve"));
		int quantityofAneg =Integer.parseInt(request.getParameter("quantityofA-ve"));
		int quantityofBpos =Integer.parseInt(request.getParameter("quantityofB+ve"));
		int quantityofBneg =Integer.parseInt(request.getParameter("quantityofB-ve"));
		int quantityofABpos =Integer.parseInt(request.getParameter("quantityofAB+ve"));
		int quantityofABneg =Integer.parseInt(request.getParameter("quantityofAB-ve"));
		int quantityofOpos =Integer.parseInt(request.getParameter("quantityofO+ve"));
		int quantityofOneg =Integer.parseInt(request.getParameter("quantityofO-ve"));
		String address = request.getParameter("address");
		Bloodbank bloodbank = new Bloodbank(name,location,quantityofApos,quantityofAneg,quantityofBpos,quantityofBneg,quantityofABpos,quantityofABneg,quantityofOpos,quantityofOneg,phone,address);		
		BloodbankDAO bloodbankDao = new BloodbankDAO();
		int x = bloodbankDao.register(bloodbank);
		RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
		rd.include(request, response);
	  out.println("<h3><CENTER>Registration Success .....</CENTER></H3>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

