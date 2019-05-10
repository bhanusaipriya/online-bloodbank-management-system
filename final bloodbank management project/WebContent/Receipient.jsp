<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="images/shorcut.jpg">
	<title>Register Form</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Passion+One'>
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Oxygen'>
</head>
<body>
<style>
body{
  background:url('images1/11.jpg');
  background-size:cover;
  font-family: 'Oxygen', sans-serif;
  color: #fff !important;
}
p {
  margin: 0 !important;
}
.main{
  margin-top: 25px;
}

.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
  color: #fff;
}

hr{
	width: 10%;
	color: #000;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}
.

input,
input::-webkit-input-placeholder {
  font-size: 13px;
  padding-top: 3px;
}

.main-login{
  background-color: #00000080;
  -moz-border-radius: 2px;
  -webkit-border-radius: 1px;
  border-radius: 2px;
}

.main-center{
  margin: 0 auto;
  max-width: 450px;
  padding: 40px 40px;

}

.login-button{
	margin-top: 15px;
	margin-left:390px;
}
.message {
  color: #fff;
  text-shadow: 1px 1px 2px red;
  padding-left: 50px;
  font-weight: bold;
}
</style>
<script>
function validateEmail(email) {
    var re_mail = /^[a-zA-Z0-9_\.]+@[a-zA-Z]+\.[a-zA-Z]+(\.[a-zA-Z]+)*$/;
    return re_mail.test(email);
}
function validatePhone(phone) {
    var re_phone = /^(\+84|0)[3|5|7|8|9][1-9]\d{7}$/;
    return re_phone.test(phone);
}
function check_name(name) {
    var message_name="";
    if (name.value==="") {
        name.style.border='1px solid red';
        message_name="Please enter your name !";
        document.getElementById('message_name').innerHTML=message_name;
        return 0;
    } else if (name.value.length<7) {
        name.style.border='1px solid red';
        message_name="Please enter your full name !";
        document.getElementById('message_name').innerHTML=message_name;
        return 0;
    } else {
        name.style.border='1px solid green';
        message_name="";
        document.getElementById('message_name').innerHTML=message_name;
        return true;
    }
}
function check_email(mail) {
    var message_mail="";
    if (mail.value==="") {
        mail.style.border='1px solid red';
        message_mail="Please enter your Email !";
        document.getElementById('message_mail').innerHTML=message_mail;
        return 0;
    } else if (!validateEmail(mail.value)) {
        mail.style.border='1px solid red';
        message_mail="Email invalid !";
        document.getElementById('message_mail').innerHTML=message_mail;
        return 0;
    } else {
        mail.style.border='1px solid green';
        message_mail="";
        document.getElementById('message_mail').innerHTML=message_mail;
        return 1;
    }
}
function check_address(address) {
    var message_address="";
    if (address.value==="") {
        address.style.border='1px solid red';
        message_address="Please enter your address !";
        document.getElementById('message_address').innerHTML=message_address;
        return 0;
    } else {
        address.style.border='1px solid green';
        message_address="";
        document.getElementById('message_address').innerHTML=message_address;
        return 1
    }
}
function check_phone(phone) {
    var message_phone="";
    if (phone.value==="") {
        phone.style.border='1px solid red';
        message_phone="Please enter your phone number !";
        document.getElementById('message_phone').innerHTML=message_phone;
        return 0;
    } else if (!validatePhone(phone.value)) {
        phone.style.border='1px solid red';
        message_phone="Number phone invalid !";
        document.getElementById('message_phone').innerHTML=message_phone;
        return 0;
    } else {
        phone.style.border='1px solid green';
        message_phone="";
        document.getElementById('message_phone').innerHTML=message_phone;
        return 1;
    }
}
function check_username(username) {
    var message_username="";
    if (username.value==="") {
        username.style.border='1px solid red';
        message_username="Please enter your username !";
        document.getElementById('message_username').innerHTML=message_username;
        return 0;
    } else {
        username.style.border='1px solid green';
        message_username="";
        document.getElementById('message_username').innerHTML=message_username;
        return 1;
    }
}
function check_password(password) {
    var message_password="";
    if (password.value==="") {
        password.style.border='1px solid red';
        message_password="Please enter your password !";
        document.getElementById('message_password').innerHTML=message_password;
        return 0;
    } else if (password.value.length < 8) {
        password.style.border='1px solid red';
        message_password="Passwords must be at least 8 characters long";
        document.getElementById('message_password').innerHTML=message_password;
        return 0;
    } else {
        password.style.border='1px solid green';
        message_password="";
        document.getElementById('message_password').innerHTML=message_password;
        return 1;
    }
}
function check_conf_password(conf_password,password) {
    var message_conf_password="";
    if (conf_password.value==="") {
        conf_password.style.border='1px solid red';
        message_conf_password="Please confirm your password !";
        document.getElementById('message_conf_password').innerHTML=message_conf_password;
        return 0;
    } else if (conf_password.value!=password.value) {
        conf_password.style.border='1px solid red';
        message_conf_password="Password incorrect !";
        document.getElementById('message_conf_password').innerHTML=message_conf_password;
        return 0;
    } else {
        conf_password.style.border='1px solid green';
        message_conf_password="";
        document.getElementById('message_conf_password').innerHTML=message_conf_password;
        return 1;
    }
}
function check(){
    var name = document.getElementById('name');
    var email = document.getElementById('email');
    var address = document.getElementById('address');
    var phone = document.getElementById('phone');
    var username = document.getElementById('username');
    var password = document.getElementById('password');
    var conf_password = document.getElementById('conf_password');
    check_name(name);
    if (check_name(name)==0) {
        return;
    };
    check_email(email);
    if (check_email(email)==0) {
        return;
    };
    check_address(address);
    if (check_address(address)==0) {
        return;
    };
    check_phone(phone);
    if (check_phone(phone)==0) {
        return;
    };
    check_username(username);
    if (check_username(username)==0) {
        return;
    };
    check_password(password);
    if (check_password(password)==0) {
        return;
    };
    check_conf_password(conf_password,password);
    if (check_conf_password(conf_password,password)==0) {
        return;
    };
    window.location.reload(); //Refresh page
}
</script>
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">REGISTER</h1>
					<hr />
				</div>
			</div> 
			<div class="main-login main-center">
				<form class="form-horizontal" method="post" action="ReceipientRegistration">
					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your Name</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
								<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" />
							</div>
							<div class="message" id="message_name">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="cols-sm-2 control-label"> YOUR ADDRESS</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-tint" aria-hidden="true"></i></span>
								<input type="text" class="form-control" name="address" id="bgroup"  placeholder="Enter the adrress"/>
							</div>
							<div class="message" id="message_name">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="adderss" class="cols-sm-2 control-label">Your City</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-map-marker fa-lg"></i></span>
								<input type="address" class="form-control" name="location" id="city"  placeholder="Enter the City "/>
							</div>
							<div class="message" id="message_address">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="phone" class="cols-sm-2 control-label">Phone Number</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-phone-square fa-lg" aria-hidden="true"></i></span>
								<input type="phone" class="form-control" name="phone" id="phone"  placeholder="Enter your Phone Number"/>
							</div>
							<div class="message" id="message_phone">
							</div>
						</div>
					</div>
					</div>
					<div class="form-group col-md-4">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-button"onclick="check()">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/js.js"></script>
</body>
</html>