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
import javax.servlet.http.HttpSession;


import com.ts.dao.ReceipientDAO;
import com.ts.dto.Receipient;


@WebServlet("/ViewRequestByAdmin")
public class ViewRequestByAdmin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		ReceipientDAO rDao = new 	ReceipientDAO();
		List<Receipient> arrayList = rDao.getAllReceipient();
		out.print("<html>");
		request.setAttribute("receipientData", arrayList);
		RequestDispatcher rd = request.getRequestDispatcher("Allrequest.jsp");
			rd.include(request, response);
			out.print("</body>");			
		out.println("</html>");	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
