<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
html,body{
background-image: url('images1/reg.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
body {
    padding-top: 90px;
}
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,600);
.M1{
    width: 160%;
    height: 100px;
    position: absolute;
    align:left;
     }
    
.form-group{
   position: relative;
   width: auto;
    }
  .class1{
       margin-left:200px;
       width:20%;
       height:100px;
    }

.form-control{
    background: transparent;
    width: 160%;
    
}
form {
    width: 320px;
	margin: 0;
}
form > div {
	position: relative;
	overflow: hidden;
}
form input, form textarea {
	width: 100%;
	border: 2px solid gray;
	background: none;
	position: relative;
	top: 0;
	left: 0;
	z-index: 1;
	padding: 8px 12px;
	outline: 0;
}
form input:valid, form textarea:valid {
	background: #F0F7F7;
}
form input:focus, form textarea:focus {
	border-color: #357EBD;
}
form input:focus + label, form textarea:focus + label {
	background: #FA0;
	color: white;
	font-size: 70%;
	padding: 1px 6px;
	z-index: 2;
	text-transform: uppercase;
}
form label {
	-webkit-transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
	transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
	position: absolute;
	color: #999;
	padding: 7px 6px;
	font-weight: normal;
}
form textarea {
	display: block;
	resize: vertical;
}
form.go-bottom input, form.go-bottom textarea {
	padding: 12px 12px 12px 12px;
}
form.go-bottom label {
	top: 0;
	bottom: 0;
	left: 0;
	width: 100%;
}
form.go-bottom input:focus, form.go-bottom textarea:focus {
	padding: 4px 6px 20px 6px;
}
form.go-bottom input:focus + label, form.go-bottom textarea:focus + label {
	top: 100%;
	margin-top: -16px;
}
form.go-right label {
	border-radius: 0 5px 5px 0;
	height: 100%;
	top: 0;
	right: 100%;
	width: 100%;
	margin-right: -100%;
}
form.go-right input:focus + label, form.go-right textarea:focus + label {
	right: 0;
	margin-right: 0;
	width: 40%;
	padding-top: 5px;
}

html,
body {
/*css for full size background image http://p1.pichost.me/i/66/1910857.jpg*/
  background: url('images1/reg.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
    height: 100%;
  background-color: #FA0;
  color: #fff;
  text-align: left;
  text-shadow: 0 1px 2px rgba(0,0,0,.5);
 
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 100%;
  height: 100%; /* For at least Firefox */
  min-height: 100%;
  -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
          box-shadow: inset 0 0 100px rgba(0,0,0,.5);
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}


/* Related to SIde MENU Text */

box-sizing: border-box;
}
body {
    background: url('reg.jpg');
    text-align: right;
    padding-top: 40px;
    padding-left: 20px;
}
.btn-nav {
    color: Green;
    background-color: #fff;
    border: 1px solid #e0e1db;
    -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
    -moz-box-sizing: border-box;    /* Firefox, other Gecko */
    box-sizing: border-box;         /* Opera/IE 8+ */
}
.btn-nav:hover {
    color: #e92d00;
    cursor: pointer;
    -webkit-transition: color 1s; /* For Safari 3.1 to 6.0 */
    transition: color 1s;
}
.btn-nav.active {
    color: #e92d00;
    padding: 2px;
    border-top: 6px solid #e92d00;
	border-bottom: 6px solid #e92d00;
    border-left: 0;
    border-right: 0;
    box-sizing:border-box;
    -moz-box-sizing:border-box;
    -webkit-box-sizing:border-box;
    -webkit-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -moz-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -ms-transition: border 0.3s ease-out, color 0.3s ease 0.5s; /* IE10 is actually unprefixed */
    -o-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -webkit-animation: pulsate 1.2s linear infinite;
    animation: pulsate 1.2s linear infinite;
}
.btn-nav.active:before {
	content: '';
    position: absolute;
	border-style: solid;
	border-width: 6px 6px 0;
	border-color: #e92d00 transparent;
	display: block;
	width: 0;
	z-index: 1;
	margin-left: -6px;
	top: 0;
	left: 50%;
}
.btn-nav .glyphicon {
    padding-top: 16px;
	font-size: 40px;
}
.btn-nav.active p {
    margin-bottom: 8px;
}
@-webkit-keyframes pulsate {
 50% { color: #000; }
}
@keyframes pulsate {
 50% { color: #000; }
}
@media (max-width: 480px) {
    .btn-group {
        display: block !important;
        float: none !important;
        width: 100% !important;
        max-width: 100% !important;
    }
}
@media (max-width: 600px) {
    .btn-nav .glyphicon {
        padding-top: 12px;
        font-size: 26px;
    }
}
  
/**************************************************************************************************/



div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: -10;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}

table {    width: 100%;}
table, th, td {	border: 1px solid black;	border-collapse: collapse;}
th, td {	padding: 5px;	text-align: left;}
table#t01 tr:nth-child(even) {	background-color: #F6E6E3;}
table#t01 tr:nth-child(odd) {	background-color: #7E9987;}
table#t01 th {	background-color: Green;	color: white;}
</style>
</head>
<body>
   <br><br>
<div class="M1"   >
<div class="container-fluid " ><br><br>
<div  class="col-xs-2 col-md-5">
<div  class="col-xs-1 col-md-3 style=" padding-left:0px; ">
<div style="text-align: left;">
<div class="container">
</div>
</div>
</div>
    	<form role="form" class="form-inline col-md-9 go-right" style="color: Green;background-color:#FAFAFF;border-radius:0px 100px 100px 22px;margin-left:600px " action="DonorRegisterByAdminServlet" method="POST" >
			<h2>REGISTER</h2>
            <p>please fill the details to register</p>   
		<div class="form-group">            
			<input id="firstName" name="firstName" type="text" class="form-control" required>
			<label for="firstName">First Name <span class="glyphicon glyphicon-user"> </span></label>
		</div>
        <div class="form-group">
    		<input id="lastName" name="lastName" type="text" class="form-control" required>
			<label for="lastName">Last Name <span class="glyphicon glyphicon-user"></span> </label>
		</div>
        <br>
        <br>
		<div class="form-group">
			<input  name="phoneNumber" type="text" class="form-control" required>
			<label for="phoneNumber">Phone no: <span class="glyphicon glyphicon-phone"></span></label>
		</div>
        <br><br>
       <p>Gender:</p>
        <div class="form-group">        
            <select class="form-control" name="gender">
               <option value="-1">Select</option>
              <option id="Male" Value="Male" style="color:red" >Male</option>
              <option id="Female" Value="Female"  style="color:green">Female</option>
              <option id="Others" Value="Others"  style="color:blue">Others</option>
            </select>
       </div>
        <br><br>
         <div class="form-group">
    		<input name="email" type="text" class="form-control" style="width:400px;" placeholder="Registered email" >
			<label for="email">Registered email <span class="glyphicon glyphicon-align-envelope"></span></label>
		</div>
        <br>
        <br>
        <p>Location</p>
        <div class="form-group">
            <input id="city" name="city" type="text" class="form-control" placeHolder="City">
            <label for="city">City</label>
		</div>        
        <br><br>
        <p>Mention your health status(Fine/notFine):</p>
       <div class="form-group">            
	    <input name="health" type="text" class="form-control" required>
			<label for="health">HealthStatus <span class="glyphicon glyphicon-user"> </span></label>
		</div>
		<br><br>
		 <p>Enter your age:</p>
       <div class="form-group">            
	    <input name="age" type="text" class="form-control" required>
			<label for="age">age <span class="glyphicon glyphicon-user"> </span></label>
		</div>
		<br><br>
		<p> Enter userName:</p>
		 <div class="form-group">            
	    <input name="userName" type="text" class="form-control" required>
			<label for="userName">userName <span class="glyphicon glyphicon-user"> </span></label>
		</div>
		<br><br>
		<p> Enter password:</p>
		 <div class="form-group">            
	    <input name="pwd" type="password" class="form-control" required>
			<label for="pwd">password <span class="glyphicon glyphicon-user"> </span></label>
		</div>
		<br><br>
		<div class="form-group">
  <label class="col-md-4 control-label" for="bloodGroup">Blood Group</label>
  <div class="col-md-4">
  <p>BloodGroup</p>
    <select id="bloodGroup" name="bloodGroup" class="form-control">
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
<br/>
        <div class="class1">
        <input type="submit" value="Register">
        </div>
        </form>
         </div>
      </div>
</div>
</body>
</html>