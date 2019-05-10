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
			<th style="padding-right:20px">ID</th>
			<th style="padding-right:20px">NAME</th>
			<th style="padding-right:20px">MAIL</th>
			<th style="padding-right:20px">PHONE</th>
			<th style="padding-right:20px">QUERY</th>
		</tr>
		<c:forEach var="bank" items="${cData}">
			<tr>
				<td style="padding-right:20px">${bank. contactId}</td>
				<td style="padding-right:20px">${bank.name}</td>
				<td style="padding-right:20px">${bank.email}</td>
				<td style="padding-right:20px">${bank.mobileno}</td>
		        <td style="padding-right:20px">${bank.query }
			    </tr>
		</c:forEach>
	</table>
<br>
<br>
</center>
</body>
</html>
		