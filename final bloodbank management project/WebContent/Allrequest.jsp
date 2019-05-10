<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Receipient, java.util.List,com.ts.dto.Receipient_Bloodbank"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Display.jsp" />
<center>
 <table class="table table-hover">
		<tr>
			<th style="padding-right:20px">ID</th>
			<th style="padding-right:20px">NAME</th>
			<th style="padding-right:20px">LOCATION</th>
			<th style="padding-right:20px">PHONE</th>
			<th style="padding-right:20px">ADDRESS</th>
			<th style="padding-right:20px">REQUESTS</th>
		</tr>
		<% 
		ArrayList<Receipient> arrayList= (ArrayList<Receipient>)request.getAttribute("receipientData");
		for(Receipient r : arrayList) { %>		 
		<tr>			
			<td style="padding-right:20px"><%=r.getReceipientId()%></td>
			<td style="padding-right:20px"><%=r.getName() %>
			<td style="padding-right:20px"><%=r.getLocation() %>
			<td style="padding-right:20px"><%=r.getPhone() %>
			<td style="padding-right:20px"><%=r.getAddress() %>
			<td style="padding-right:20px"> <table class="table table-hover">
			<tr>
			<th style="padding-right:20px">REQUESTID</th>
			<th style="padding-right:20px">QUANTITY</th>
			<th style="padding-right:20px">STATUS</th>
			<th style="padding-right:20px">BLOODGROUP</th>
			<th style="padding-right:20px">REQUESTDATE</th>
			<th style="padding-right:20px">BLOODBANKID</th>
			<th style="padding-right:20px">BLOODBANK NAME</th>
			<th style="padding-right:20px">BLOODBANK LOCATION</th>
			<th style="padding-right:20px">BLOODBANK ADDRESS</th>
			</tr>
		    <% List <Receipient_Bloodbank> rb=r.getBloodbankreceipient();
		       for(Receipient_Bloodbank r1:rb){ %>
		       <tr>
		    	   <td style="padding-right:20px"><%=r1.getRequestId() %></td>
		    	   <td style="padding-right:20px"><%=r1.getQuantity() %></td>
		    	   <td style="padding-right:20px"><%=r1.getStatus() %></td>
		    	   <td style="padding-right:20px"><%=r1.getBloodGroup() %></td>
		    	   <td style="padding-right:20px"><%=r1.getRequestDate() %></td>
		    	   <td style="padding-right:20px"><%=r1.getBloodbank().getBloodbankId() %></td>
		    	   <td style="padding-right:20px"><%=r1.getBloodbank().getName() %></td>
		    	   <td style="padding-right:20px"><%=r1.getBloodbank().getLocation() %></td>
		    	   <td style="padding-right:20px"><%=r1.getBloodbank().getAddress() %></td>
		    	   <br>
		    </tr>
             <% } %>
             </table>
             <br/><br/>
             <% } %>
			</table>	
			</center>			
</body>
</html>





