<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Donor"%>
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
			<th style="padding-right:20px;font-size:40px">ID</th>
			<th style="padding-right:20px;font-size:40px">NAME</th>
			<th style="padding-right:20px;font-size:40px">LOCATION</th>
			<th style="padding-right:20px;font-size:40px">PHONE</th>
			<th style="padding-right:20px;font-size:40px">ADDRESS</th>
			<th style="padding-right:20px;font-size:40px">A+</th>
			<th style="padding-right:20px;font-size:40px">A-</th>
			<th style="padding-right:20px;font-size:40px">B+</th>
			<th style="padding-right:20px;font-size:40px">B-</th>
			<th style="padding-right:20px;font-size:40px">AB+</th>
			<th style="padding-right:20px;font-size:40px">AB-</th>
			<th style="padding-right:20px;font-size:40px">O+</th>
			<th style="padding-right:20px;font-size:40px">O-</th>
		</tr>
		<c:forEach var="bank" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${bank.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${bank.name}</td>
				<td style="padding-right:20px;font-size:30px">${bank.location}</td>
				<td style="padding-right:20px;font-size:30px">${bank.phone}</td>
				<td style="padding-right:20px;font-size:30px">${bank.address}</td>
				<td style="padding-right:20px;font-size:30px">${bank.apositive}</td>
				<td style="padding-right:20px;font-size:30px">${bank.anegative}</td>
				<td style="padding-right:20px;font-size:30px">${bank.bpositive}</td>
				<td style="padding-right:20px;font-size:30px">${bank.bnegative}</td>
				<td style="padding-right:20px;font-size:30px">${bank.abpositive}</td>
				<td style="padding-right:20px;font-size:30px">${bank.abnegative}</td>
				<td style="padding-right:20px;font-size:30px">${bank.opositive}</td>
				<td style="padding-right:20px;font-size:30px">${bank.onegative}</td>
			    </tr>
		</c:forEach>
	</table>
          </center>
            
<br>
<br>
</body>
</html>
		