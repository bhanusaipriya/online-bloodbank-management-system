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
			<th style="padding-right:15px;font-size:30px">ID</th>
			<th style="padding-right:15px;font-size:30px">NAME</th>
			<th style="padding-right:15px;font-size:30px">LOCATION</th>
			<th style="padding-right:15px;font-size:30px">PHONE</th>
			<th style="padding-right:15px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:15px;font-size:30px">A+</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.apositive}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='anegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">A-</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.anegative}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='bpositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">B+</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td  style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.bpositive}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			 <c:if test = "${g=='bnegative'}">
			<table  class="table table-hover">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">B-</th>
			 
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.negative}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			 
			<c:if test = "${g=='abpositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">AB+</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.abpositive}</td>

			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='abnegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">AB-</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.abnegative}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='opositive'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">O+</th>
			 			
			 
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.opositive}</td>
				
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			
			<c:if test = "${g=='onegative'}">
			<table  class="table table-hover"  align="center">
		<tr>
			<th style="padding-right:20px;font-size:30px">ID</th>
			<th style="padding-right:20px;font-size:30px">NAME</th>
			<th style="padding-right:20px;font-size:30px">LOCATION</th>
			<th style="padding-right:20px;font-size:30px">PHONE</th>
			<th style="padding-right:20px;font-size:30px">ADDRESS</th>
			 <th style="padding-right:20px;font-size:30px">O-</th>
			 </tr>
			 <c:forEach var="b" items="${bankData}">
			<tr>
				<td style="padding-right:20px;font-size:30px">${b.bloodbankId}</td>
				<td style="padding-right:20px;font-size:30px">${b.name}</td>
				<td style="padding-right:20px;font-size:30px">${b.location}</td>
				<td style="padding-right:20px;font-size:30px">${b.phone}</td>
				<td style="padding-right:20px;font-size:30px">${b.address}</td>
				<td style="padding-right:20px;font-size:30px">${b.onegative}</td>
			    </tr>
		      </c:forEach>
		      </table>
			 </c:if>
			<a href="HomePage.html">
<br><font size="5"><input type="submit" value="Back to home page"></font></a>
	</div>			
</body>
</html>
