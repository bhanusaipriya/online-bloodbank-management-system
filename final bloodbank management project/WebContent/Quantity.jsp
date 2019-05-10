<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url('images1/admin.jpg');
}
</style>
</head>
<body>
   <%
    int bloodbankId = Integer.parseInt(request.getParameter("bloodbankId"));
    session.setAttribute("bloodbankId",bloodbankId);
 %> 
     <form action="QuantityServlet" method="POST">
     <br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
     
     <h1> <center>Enter the quantity: <input type="text" name="quantity" ></center></h1>
     <p><h2><center>(1 = 1 unit = 350ml of blood)</center></h2><br/>
     <center><font size="10"><input type="submit" value="enter"></font></center>
     </form>
</body>
</html>