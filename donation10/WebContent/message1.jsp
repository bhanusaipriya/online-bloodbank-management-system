<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body{
background-image:url('images1/grey.jpg');
height: 100%;
font-family: 'Numans', sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color:Aqua;
}

.topnav a {
  float: left;
  display: block;
  color: GREEN;
  text-align: center;
  padding: 20px 150px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: GOLD;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
</head>
<body>
	<jsp:include page="DonorsInBloodbank.jsp" />
<div class="topnav" id="myTopnav">
  <a href="ProfileServletOfBloodbank" >View profile</a>
  <a href="DonorsInBloodbank.jsp">Add Donors</a>
  <a href="ReceipientInBloodbank.jsp">Add receipients</a>
  <a href="logout.jsp">logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
 <div style="padding-left:16px">
  <h2><center>Added Successfully..</center></h2>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
