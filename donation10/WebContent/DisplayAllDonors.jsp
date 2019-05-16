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
		
			<th style="padding-right:20px;font-size:20px" >ID</th>
			<th style="padding-right:20px;font-size:20px">FIRSTNAME</th>
			<th style="padding-right:20px;font-size:20px">LASTNAME</th>
			<th style="padding-right:20px;font-size:20px">GENDER</th>
			<th style="padding-right:20px;font-size:20px">AGE</th>
			<th style="padding-right:20px;font-size:20px">PHONE NUMBER</th>
			<th style="padding-right:20px;font-size:20px">BLOODGROUP</th>
			<th style="padding-right:20px;font-size:20px">EMAIL</th>
			<th style="padding-right:20px;font-size:20px">CITY</th>
			<th style="padding-right:20px;font-size:20px">USER NAME</th>
			<th style="padding-right:20px;font-size:20px">DATE OF DONATION</th>
			<th style="padding-right:20px;font-size:20px">DONATIONS</th>
		</tr>
		<% 
		ArrayList<Donor> arrayList= (ArrayList<Donor>)request.getAttribute("DonorData");
		for(Donor d: arrayList) { %>		 
		<tr>			
			<td style="padding-right:20px;font-size:20px"><%=d.getDonorId()%></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getFirstName() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getLastName() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getGender()%></td>
			<td style="padding-right:20px;font-size:20px" ><%=d.getAge() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getPhoneNumber() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getBloodGroup() %></td>
	      		<td style="padding-right:20px;font-size:20px" ><%=d.getEmail() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getCity() %></td>
			<td style="padding-right:20px;font-size:20px"><%=d.getUserName() %>
			<td  style="padding-right:20px;font-size:20px"><%=d.getDateOfDonation() %></td>
			<td> <table class="table table-hover">
			<tr>
			<th style="padding-right:20px;font-size:15px">BLOODBANKID</th>
			<th style="padding-right:20px;font-size:15px">BLOODBANK NAME</th>
			<th style="padding-right:20px;font-size:15px">BLOODBANK LOCATION</th>
			<th style="padding-right:20px;font-size:15px">BLOODBANK ADDRESS</th>
			</tr>
		    <% List <Donor_Bloodbank> rb= d.getDonorbloodbank();
		       for(Donor_Bloodbank r1:rb){ %>
		       <tr>
		    	   <td style="padding-right:20px;font-size:18px"><%=r1.getBloodbank().getBloodbankId() %></td>
		    	   <td style="padding-right:20px;font-size:18px"><%=r1.getBloodbank().getName() %></td>
		    	   <td style="padding-right:20px;font-size:18px"><%=r1.getBloodbank().getLocation() %></td>
		    	   <td style="padding-right:20px;font-size:18px"><%=r1.getBloodbank().getAddress() %></td>
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