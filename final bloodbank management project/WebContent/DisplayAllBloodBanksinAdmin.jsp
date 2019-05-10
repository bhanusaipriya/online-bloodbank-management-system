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
			<th style="padding-right:15px">BID</th>
			<th style="padding-right:15px">BNAME</th>
			<th style="padding-right:15px">BLOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			<th style="padding-right:15px">A+</th>
			<th style="padding-right:15px">A-</th>
			<th style="padding-right:15px">B+</th>
			<th style="padding-right:15px">B-</th>
			<th style="padding-right:15px">AB+</th>
			<th style="padding-right:15px">AB-</th>
			<th style="padding-right:15px">O+</th>
			<th style="padding-right:15px">O-</th>
		</tr>
		<c:forEach var="bank" items="${bankData}">
			<tr>
				<td>${bank.bloodbankId}</td>
				<td>${bank.name}</td>
				<td>${bank.location}</td>
				<td>${bank.phone}</td>
				<td>${bank.address}</td>
				<td>${bank.apositive}</td>
				<td>${bank.anegative}</td>
				<td>${bank.bpositive}</td>
				<td>${bank.bnegative}</td>
				<td>${bank.abpositive}</td>
				<td>${bank.abnegative}</td>
				<td>${bank.opositive}</td>
				<td>${bank.onegative}</td>
			    </tr>
		</c:forEach>
	</table>
          </center>
            
<br>
<br>
</body>
</html>
		