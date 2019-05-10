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
import java.util.List;

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

@WebServlet("/HistoryServlet")
public class HistoryServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		HttpSession session = request.getSession(true);
 	    Donor_BloodbankDAO db = new Donor_BloodbankDAO();
 	    List<Donor_Bloodbank> db1 = db.getAllDetails();
 	    session.setAttribute("db",db1);
		out.println("</html>");
		
		RequestDispatcher rd = request.getRequestDispatcher("History.jsp");
		rd.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
