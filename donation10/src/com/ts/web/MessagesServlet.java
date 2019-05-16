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
import com.ts.dao.ContactDAO;
import com.ts.dao.DonorDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Contactus;
import com.ts.dto.Donor;

@WebServlet("/MessagesServlet")
public class MessagesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		
		 ContactDAO cdao = new ContactDAO();
		List<Contactus> arrayList = cdao.getAllmessages();
		for(Contactus c:arrayList){
			System.out.println(c.getContactId());
		}
		System.out.println("yes");
		request.setAttribute("cData", arrayList);
		RequestDispatcher rd = request.getRequestDispatcher("ContactMessages.jsp");
		rd.forward(request, response);	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}