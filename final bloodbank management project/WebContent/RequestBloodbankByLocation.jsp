<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url('images1/admin.jpg');
}
.profile-userbuttons {
  text-align: center;
  margin-top: 10px;
  color:RED;
}

.profile-userbuttons .btn {
  text-transform: uppercase;
  font-size: 20px;
  font-weight: 600;
  padding: 6px 15px;
  margin-right: 5px;
}

</style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
 <div class="profile-userbuttons">
			<c:set var="g" value="${group}"></c:set>
			 <c:if test = "${g == 'apositive'}">
			<table  class="table table-hover" align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">A+</th>
			 <th style="padding-right:20px">CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px">${b.bloodbankId}</td>
				<td style="padding-right:20px">${b.name}</td>
				<td style="padding-right:20px">${b.location}</td>
				<td style="padding-right:20px">${b.phone}</td>
				<td style="padding-right:20px">${b.address}</td>
				<td style="padding-right:20px">${b.apositive}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='anegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">A-</th>
			  <th>CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.anegative}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='bpositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">B+</th>
			 			 <th>CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.bpositive}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='bnegative'}">
			<table  class="table table-hover">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">B-</th>
			 			 <th>CHOOSE BLOODBANK</th>
			 
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.negative}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			<c:if test = "${g=='abpositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">AB+</th>
			 			 <th>CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.abpositive}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>

			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='abnegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">AB-</th>
			 			 <th>CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.abnegative}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='opositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">O+</th>
			 			 <th>CHOOSE BLOODBANK</th>
			 
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td>${b.bloodbankId}</td>
				<td>${b.name}</td>
				<td>${b.location}</td>
				<td>${b.phone}</td>
				<td>${b.address}</td>
				<td>${b.opositive}</td>
				<td><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" role="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='onegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:15px">ID</th>
			<th style="padding-right:15px">NAME</th>
			<th style="padding-right:15px">LOCATION</th>
			<th style="padding-right:15px">PHONE</th>
			<th style="padding-right:15px">ADDRESS</th>
			 <th style="padding-right:15px">O-</th>
			 			 <th style="padding-right:15px">CHOOSE BLOODBANK</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:15px">${b.bloodbankId}</td>
				<td style="padding-right:15px">${b.name}</td>
				<td style="padding-right:15px">${b.location}</td>
				<td style="padding-right:15px">${b.phone}</td>
				<td style="padding-right:15px">${b.address}</td>
				<td style="padding-right:15px">${b.onegative}</td>
				<td style="padding-right:15px"><a href='Quantity.jsp?bloodbankId=${b.bloodbankId}' class="btn btn-success btn-sm" type="button">RECEIVE</a></td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
	</div>			
</body>
</html>