<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Donor, java.util.List,com.ts.dto.Donor_Bloodbank"%>
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
		
			<th style="padding-right:15px">DONOR</th>
			<th style="padding-right:15px">FIRSTNAME</th>
			<th style="padding-right:15px">LASTNAME</th>
			<th style="padding-right:15px">GENDER</th>
			<th style="padding-right:15px">AGE</th>
			<th style="padding-right:15px">HEALTH STATUS</th>
			<th style="padding-right:15px">PHONE NUMBER</th>
			<th style="padding-right:15px">BLOODGROUP</th>
			<th style="padding-right:15px">EMAIL</th>
			<th style="padding-right:15px">CITY</th>
			<th style="padding-right:15px">USER NAME</th>
			<th style="padding-right:15px">DATE OF DONATION</th>
			<th style="padding-right:15px">DONATIONS</th>
		</tr>
		<% 
		ArrayList<Donor> arrayList= (ArrayList<Donor>)request.getAttribute("DonorData");
		for(Donor d: arrayList) { %>		 
		<tr>			
			<td style="padding-right:15px"><%=d.getDonorId()%></td>
			<td style="padding-right:15px"><%=d.getFirstName() %></td>
			<td style="padding-right:15px"><%=d.getLastName() %></td>
			<td style="padding-right:15px"><%=d.getGender()%></td>
			<td style="padding-right:15px"><%=d.getAge() %></td>
			<td style="padding-right:15px"><%=d.getHealthstatus() %></td>
			<td style="padding-right:15px"><%=d.getPhoneNumber() %></td>
			<td style="padding-right:15px"><%=d.getBloodGroup() %></td>
			<td style="padding-right:15px"><%=d.getEmail() %></td>
			<td style="padding-right:15px"><%=d.getCity() %></td>
			<td style="padding-right:15px"><%=d.getUserName() %>
			<td style="padding-right:15px"><%=d.getDateOfDonation() %></td>
			<td style="padding-right:15px"> <table class="table table-hover">
			<tr>
			<th style="padding-right:15px">BLOODBANKID</th>
			<th style="padding-right:15px">BLOODBANK NAME</th>
			<th style="padding-right:15px">BLOODBANK LOCATION</th>
			<th style="padding-right:15px">BLOODBANK ADDRESS</th>
			</tr>
		    <% List <Donor_Bloodbank> rb= d.getDonorbloodbank();
		       for(Donor_Bloodbank r1:rb){ %>
		       <tr>
		    	   <td style="padding-right:15px"><%=r1.getBloodbank().getBloodbankId() %></td>
		    	   <td style="padding-right:15px"><%=r1.getBloodbank().getName() %></td>
		    	   <td style="padding-right:15px"><%=r1.getBloodbank().getLocation() %></td>
		    	   <td style="padding-right:15px"><%=r1.getBloodbank().getAddress() %></td>
		    	   <br/>
		    </td>
             <% } %>
             </table>
             <br/><br/> 
             <% } %>
			</table>
			</center>	
</body>
</html>