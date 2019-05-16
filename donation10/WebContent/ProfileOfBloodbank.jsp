<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Bloodbank"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Bloodbank bloodbank = (Bloodbank)session.getAttribute("bankData") ;%>
	<jsp:include page="BloodbankHomePage.jsp" />
	
	<center>
	 <table class="table table-hover">
	 <tr>
           <td> <h1><span style="color:black"><b>NAME  <td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b> <%= bloodbank.getName()%></b></span></h1></td>
            </tr>
            <tr>
			<td><h1><span style="color:black"><b>LOCATION<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getLocation()%></b></span></h1></td>
			</tr><tr>
			<td><h1><span style="color:black"><b>PHONE<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getPhone()%></b></span></h1></td>
			</tr><tr>
			<td><h1><span style="color:black"><b>ADDRESS<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getAddress()%>		</b></span></h1></td>
			</tr><tr>
			<td><h1><span style="color:black"><b>A+<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getApositive()%></b></span></h1></td>
			</tr><tr>
			<td><h1><span style="color:black"><b>A-<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getAnegative()%></b></span></h1></td>
			<tr>
			<td><h1><span style="color:black"><b>B+<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getBpositive()%></b></span></h1></td>
			<tr>
			<td><h1><span style="color:black"><b>B-<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getBnegative()%></b></span></h1></td>
			<tr>
			<td><h1><span style="color:black"><b>AB+<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getAbpositive()%></b></span></h1></td>
		<tr>
			<td><h1><span style="color:black"><b>AB-<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getAbnegative()%></b></span></h1></td>
<tr>
			<td><h1><span style="color:black"><b>O+<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getOpositive()%></b></span></h1></td>
			<tr>
			<td><h1><span style="color:black"><b>O-<td> : </td> </b></span></h1></td> <td><h1><span style="color:red"><b><%=bloodbank.getOnegative()%></b></span></h1></td>
		</tr>
	</table>
          </center>
            
<br>
<br>
</body>
</html>
		