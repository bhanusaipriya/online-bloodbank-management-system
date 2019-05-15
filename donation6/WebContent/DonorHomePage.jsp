<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.ts.dto.Bloodbank" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function() {
    $("div.bhoechie-tab-menu>ul.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
});
</script>
<style>
/***
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
***/

body {
background-image: url('images1/111.jpg');
background-size: cover;
background-repeat: repeat;
height: 100%;
}

/* Profile container */
.profile {
  margin: 20px 0;
  height:100%;
  margin-top:20px;
}

/* Profile sidebar */
.profile-sidebar {
  padding: 20px 0 10px 0;
  background: #fff;
}
.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: 50%;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important;
}

.profile-usertitle {
  text-align: center;
  margin-top: 20px;
}

.profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}

.profile-usertitle-job {
  text-transform: uppercase;
  color: #5b9bd1;
  font-size: 12px;
  font-weight: 600;
  margin-bottom: 15px;
}

.profile-userbuttons {
  text-align: center;
  margin-top: 10px;
  color:RED;
}

.profile-userbuttons .btn {
  text-transform: uppercase;
  font-size: 11px;
  font-weight: 600;
  padding: 6px 15px;
  margin-right: 5px;
}

.profile-userbuttons .btn:last-child {
  margin-right: 0px;
}
    
.profile-usermenu {
  margin-top: 30px;
}

.profile-usermenu ul li {
  border-bottom: 10px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
  border-bottom: none;
}

.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}

.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}

.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
}

.profile-usermenu ul li.active {
  border-bottom: none;
}

.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}

/* Profile Content */
.profile-content {
   background-image: url('images1/1.png');
   background-size: cover;
   background-repeat: repeat;
  padding: 30px;
  min-height: 520px;
}
</style>
</head>
<body>
<%
		String userName = (String) session.getAttribute("userName");
	%>

<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="images1/img.jpg" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						HI..
					</div>
					<div class="profile-usertitle-job">
						user:<%=userName %>
					</div>
				</div>
			<div class="profile-usermenu">
					<ul class="nav">
					    <li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							 Overview<br/><br/>
							 </a>
						</li>
						<li>
							<a href="ProfileServlet">
							<i class="glyphicon glyphicon-user"></i>
							View Profile </a>
						</li>
						<li>
							<a href="EditServlet">
							<i class="glyphicon glyphicon-edit"></i>
							Edit Profile </a>
						</li>
						<li>
							<a href="HistoryServlet" >
							<i class="glyphicon glyphicon-ok"></i>
							Donation History </a>
						</li>
						<li>
							<a href="Location.jsp">
							<i class="glyphicon glyphicon-map-marker"></i>
							Search by Location </a>
						</li>
						<li>
							<a href="logout.jsp">
							<i class="glyphicon glyphicon-off"></i>
							logout </a>
						</li>
					</ul>
					</div>
				<!-- END MENU -->
			</div>
		</div>
		 <div class="col-md-9">
            <div class="profile-content">
            </div>
            </div>
	</div>
</div>
<br>
<br>
</body>
</html>
