<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Chat Panel</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="icon" type="img/ico" href='img/favicon-icon.png'>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap-hover-dropdown.min.js"></script>
    <script src="js/admin.js"></script>
    <script src="https://use.fontawesome.com/10a964325b.js"></script>
    <script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
    $('.navbar-light .dmenu').hover(function () {
            $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
        }, function () {
            $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
        });
    });
    $(document).ready(function(){
        $("#menu_icon").click(function(){
            $(".open_sidbar").toggleClass("small_sidebar");
            $('.remove_text').toggleClass('text_hide');
            $('#content_body').toggleClass('margin_left');
        });
    });
    </script>
<style>

html,body{
background:url('images1/admin6.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.social-part .fa{
    padding-right:20px;
}
ul li a{
    margin-right: 20px;
}

@font-face {
    font-family: 'TitilliumWeb';
    src: url(../font-style/TitilliumWeb-Light.ttf) format('truetype');
} 
body{
     font-family: 'TitilliumWeb';
}

::selection {
    color: #fff;
    background: #8956cf;
}
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    background-color: #F5F5F5;
    display:none;
}
::-webkit-scrollbar {
    width: 6px;
    background-color: #F5F5F5;
    display:none;
}
::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
    background-color: #8956cf;
    display:none;
}

.main-container{
    position: relative;
    display:block;
    width:100%;
}
#content_body {
    width: 100%;
    display: block;
    margin-left: 500px;
    transition: all .3s cubic-bezier(.55,0,.1,1);
}
.margin_left{
    margin-left:0px!important;
     transition: all .3s cubic-bezier(.55,0,.1,1);
}

/*===================TOP NAVBAR FIXED NAVBAR===================*/
 .admin-navbar {
     background-color: rgb(66, 133, 244);
     border-color: rgb(66, 133, 244);
     box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 3px, rgba(0, 0, 0, 0.24) 0px 1px 2px;
}
 .navbar {
     position: relative;
     min-height: 64px;
     margin-bottom: 20px;
     border: 1px solid transparent;
}
 .navbar-herader {
     display: inline-block;
}
 .navbar button:focus {
     outline: none;
}
 .navbar button {
     border: none;
     width: 50px;
     cursor: pointer;
     height: 50px;
     color: white;
     padding: 11px 15px;
     font-size: 21px;
     border-radius: 100%;
     background: #4284f4;
     margin-top: 5px;
     position: relative;
}
/* Ripple magic */
 .navbar button{
     position: relative;
     overflow: hidden;
}
 .navbar button:after {
     content: '';
     position: absolute;
     top: 50%;
     left: 50%;
     width: 5px;
     height: 5px;
     background: rgba(255, 255, 255, .5);
     opacity: 0;
     border-radius: 100%;
     transform: scale(1, 1) translate(-50%);
     transform-origin: 50% 50%;
}
 @keyframes ripple {
     0% {
         transform: scale(0, 0);
         opacity: 1;
         
    }
     20% {
         transform: scale(25, 25);
         opacity: 1;
    }
     100% {
         opacity: 0;
         transform: scale(40, 40);
    }
}
 .navbar button:focus:not(:active)::after {
     animation: ripple 1s ease-out;
}
 .notification-btn {
     color: #fff;
     background-color: transparent;
     border-color: transparent;
     font-size: 21px;
     margin-top: 10px;
}
 .btn:hover, .btn:focus, .btn.focus {
     color: #fff;
     text-decoration: none;
}
 .btn:active, .btn.active {
     box-shadow: none;
}
 .notification-btn .badge {
     color: #010101;
     background-color: #fff;
}
 button .badge {
     position: relative;
     top: -40px;
     right: -10px;
}
@media (min-width: 768px){

.container > .navbar-header, .container-fluid > .navbar-header, .container > .navbar-collapse, .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: -10px;
    
}
    }

/*********notification*********/

.pull-right > .dropdown-menu {
    right: 0;
    left: auto;
    top: 60px;
}
.card-title-text{
    padding-left:15px;
}

.list-group-item {
    position: relative;
    display: block;
    padding: 5px 0px;
    margin-bottom: 0px;
    background-color: #fff;
    border: solid 0px;
    border-bottom: 1px solid #ddd;
}

.media-object {
    display: block;
    border-radius: 50%;
}
/*******************TOP NAVBAR FIXED NAVBAR END*******************/
 

/*=======================SIDEBAR NAV START=======================*/
.hit_sidebar{
    position: relative;
    display: block;
    min-height: 100%;
    overflow-y: auto;
    overflow-x: hidden;
    overflow: hidden;
    border: none;
    transition: all .3s cubic-bezier(.55,0,.1,1);
    padding-top: 64px;
    background: #fff;
    width: 280px;
    background-color: #1f2f46;
/*    transform: translate3d(-280px,0,0);*/
    
    
}
.small_sidebar{    
    width: 80px;
    min-width: 64px;
    transform: translate3d(0px, 0px, 0px);
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
   
}
.sidebar-open {
    min-width: 274px;
    width: 274px;
    transform: translate3d(0,0,0);
}
.sidebar-slide-push {
    position: fixed;
    top: 0;
    bottom: 0;
    z-index: 999;
    left: -15px;
}


/************************SIDEBAR NAV START END************************/
aside ul{
    margin:0px;
    padding:0px;
}
aside ul li{
    list-style-type: none;
}
aside ul li a{
    font-family: 'TitilliumWeb';
    display:block;
    text-decoration:none;
    text-align:left;
    color: #c8c8c8;
    background-color: transparent;
    font-size: 16px;
    padding: 18px 20px 16px;
    transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -webkit-transition: all 0.5s ease;
}
aside ul li a:hover{
    background-color:#1A293F;
    color:#fff;
    text-decoration: none;
    
}
a:focus {
    outline: none;
    outline-offset: none;
}

aside a:hover, a:focus {
    color: #fff;
    text-decoration: none;
    background-color:#1A293F;
}
aside ul li a .nav-icon{
    margin-right:15px;
    font-size:20px!important;
}

.remove_text{
     transition-delay: 2s;
}
.text_hide{
    display:none;
     transition-delay: 2s;
}
aside ul li a span{
    display: table-cell;
    padding-left:15px;
}

</style>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">

<head>
  
</head>


<body>
    <!--////////////////TOP NAVBAR FIXED NAVBAR////////////////-->
    <div class="main-container">
        <nav class="navbar navbar-fixed-top admin-navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button id="menu_icon"><i class="fa fa-bars" aria-hidden="true"></i></button>
                     <span class="remove_text"><b>Hello! Admin</b></span>
                    
                </div> 
            </div>
        </nav>

        <aside class="hit_sidebar open_sidbar sidebar-slide-push">
            <ul>
                <li><a href="AdminProfile1.jsp">
            <span class="nav-icon"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
            <span class="remove_text"><b>View Profile<b></span></a></li>
                <li><a href="DisplayAllDonors" class="active">
            <span class="nav-icon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
            <span class="remove_text">Donor Details</span></a></li>
                <li><a href="ViewRequestByAdmin">
            <span class="nav-icon"><i class="glyphicon glyphicon-eye-open" aria-hidden="true"></i></span>
            <span class="remove_text">ReceipientsDetails</span></a></li>
                <li><a href="DisplayAllBloodBanksinAdmin">
            <span class="nav-icon"><i class="glyphicon glyphicon-tint" aria-hidden="true"></i></span>
            <span class="remove_text">Blood Banks </span></a></li>
              <li><a href="Bloodbankregister.jsp">
            <span class="nav-icon"><i class="glyphicon glyphicon-tint" aria-hidden="true"></i></span>
            <span class="remove_text">Add Blood Bank </span></a></li>
                <li><a href="MessagesServlet">
                <span class="nav-icon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
            <span class="remove_text">Queries</span> </a></li>
                <li><a href="logout.jsp">
            <span class="nav-icon"><i class="fa fa-power-off" aria-hidden="true"></i></span>
            <span class="remove_text">Logout</span> </a></li>
            </ul>
        </aside>
        <section id="content_body">
        <div class="container">
       </section>
</div>
</body>
</html>

</body>
</html>
