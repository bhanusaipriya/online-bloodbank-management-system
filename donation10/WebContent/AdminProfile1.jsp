<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
h{
font-size:50px;
}
</style>
</head>
<body>
   <jsp:include page="Admin.jsp" />
<center>

	<table border=2 align=center>
<%
		String userName = (String) session.getAttribute("userName");
        String password= (String) session.getAttribute("password");
	%>
<div class="col-md-9">
            <div class="profile-content">
              <h><center><span style="color:blue">USERNAME:</span><span><%=userName%></span></center></h>
			<br/>
			<br/>
			<br/>
			<h><center><span style="color:blue">PASSWORD:</span> <span><%=password%></span></center></h>
			<br/>
			<br/>
			<br/>
			
			</div>
</div>
</table>
 </center>
            
</body>
</html>