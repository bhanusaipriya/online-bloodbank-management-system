package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.BloodbankDAO;
import com.ts.dao.DonorDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

@WebServlet("/DisplayAllBloodbanks")
public class DisplayAllBloodbanks extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		
		BloodbankDAO bankdao = new BloodbankDAO();
		List<Bloodbank> arrayList = bankdao.getAllBloodbanks();

		request.setAttribute("bankData", arrayList);
		RequestDispatcher rd = request.getRequestDispatcher("DisplayAllBloodbanks.jsp");
		rd.forward(request, response);	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}