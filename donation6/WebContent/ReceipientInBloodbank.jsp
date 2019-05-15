  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
html,body{
background-image:url('images1/grey.jpg');
height: 100%;
background-size:cover;
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

	.well
      {
         padding: 35px;
         padding-left: 30px;
         box-shadow: 0 0 10px #666666;
         margin: 4% auto 0;
         width: 450px;
      }
html,body{
height: 100%;
font-family: 'Numans', sans-serif;
}

      body
      {
      	background-color:  #dedede;
      }

      .input-group-addon
      {
      	background-color: #ffde6c;
      	color: #d17d00;
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
<script>
function validate()
		{
			if (document.myForm.txtfname.value == "") 
			{
				alert("Please Enter First Name");
				document.myForm.txtfname.focus();
				return false;
			}

			if (document.myForm.txtlname.value == "") 
			{
				alert("Please Enter Last Name");
				document.myForm.txtlname.focus();
				return false;
			}

			if (document.myForm.txtpass.value == "")
			{
				alert("Please Create your Password");
				document.myForm.txtpass.focus();
				return false;
			}

			if (document.myForm.txtmobile.value == "") 
			{
				alert("Please enter Mobile Number");
				document.myForm.txtmobile.focus();
				return false;
			}

			if (document.myForm.txtmail.value == "") 
			{
				alert("Please Enter E-Mail ID");
				document.myForm.txtmail.focus();
				return false;
			}

			if (document.myForm.txtadd.value == "") 
			{
				alert("Please Enter Address");
				document.myForm.txtadd.focus();
				return false;
			}

			if (document.myForm.dob.value == "")
			{
				alert("Please Enter Date of Birth");
				document.myForm.dob.focus();
				return false;
			}
		}
		</script>
</style>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="ProfileServletOfBloodbank" >View profile</a>
  <a href="DonorsInBloodbank.jsp">Add Donors</a>
  <a href="ReceipientInBloodbank.jsp">Add receipients</a>
  <a href="#about">Date</a>
  <a href="logout.jsp">logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

</head>
<body>
<form action="AddReceipientInBloodbank" name="myForm" method="post" onsubmit="return(validate());">
	<div class="container-fluid">
		<div class="row">
			<div class="well center-block">
				<div class="well-header">
					<h3 class="text-center text-success"> Add the receipeint! </h3>
					<hr>
				</div>
                <p>Name</p>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" placeholder="name" name="name" class="form-control">
							</div>
						</div>
					</div>
				</div>
				    <p>City</p>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-map-marker"></i>
								</div>
								<input type="text" placeholder="city" name="city" class="form-control">
							</div>
						</div>
					</div>
				</div>		
                <p>Phone:</p>
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-phone"></i>
								</div>
								<input type="number" minlength="10" maxlength="12" class="form-control" name="phoneNumber" placeholder="Mobile No.">
							</div>
						</div>
					</div>
				</div>
					<p>BloodGroup:</p>
						<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-tint"></i>
								</div>   
				 <select  required id="bloodGroup" name="bloodGroup" class="form-control">
      <option value="-1">Select</option>
      <option value="apositive">A+</option>
      <option value="bpositive">B+</option>
      <option value="abpositive">AB+</option>
      <option value="opositive">O+</option>
      <option value="anegative">A-</option>
      <option value="bnegative">B-</option>
      <option value="abnegative">AB-</option>
      <option value="onegative">O-</option>
    </select>
    	</div>
						</div>
					</div>
				</div>
                <p>Quantity(1=1unit=350ml of blood)</p>
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-envelope"></i>
								</div>
								<input type="text" class="form-control" name="quantity" placeholder="Quantity">
							</div>
						</div>
					</div>
				</div>
                <p>Address</p>
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-list-alt"></i>
								</div>
								<textarea class="form-control" name="address" placeholder="Address"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="row widget">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<button class="btn btn-warning btn-block"> Add </button>
					</div>
				</div>
			</div>
		</div>
	</div>

</form>


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
