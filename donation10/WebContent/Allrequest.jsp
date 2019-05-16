<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Receipient, java.util.List"%>
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
			<th  style="padding-right:30px;font-size:30px">ID</th>
			<th  style="padding-right:30px;font-size:30px">NAME</th>
			<th  style="padding-right:30px;font-size:30px">LOCATION</th>
			<th  style="padding-right:30px;font-size:30px">PHONE</th>
			<th  style="padding-right:30px;font-size:30px">ADDRESS</th>
		</tr>
		<% 
		ArrayList<Receipient> arrayList= (ArrayList<Receipient>)request.getAttribute("receipientData");
		for(Receipient r : arrayList) { %>		 
		<tr>			
			<td  style="padding-right:30px;font-size:30px"><%=r.getReceipientId()%></td>
			<td  style="padding-right:30px;font-size:30px"><%=r.getName() %>
			<td  style="padding-right:30px;font-size:30px"><%=r.getLocation() %>
			<td  style="padding-right:30px;font-size:30px"><%=r.getPhone() %>
			<td  style="padding-left:40px;font-size:30px"><%=r.getAddress() %>
			</td>
             <% } %>
			</table>	
			</center>			
</body>
</html>





