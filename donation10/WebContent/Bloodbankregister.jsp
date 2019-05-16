<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
     background: url('https://static-communitytable.parade.com/wp-content/uploads/2014/03/rethink-target-heart-rate-number-ftr.jpg') fixed;
    background-size: cover;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}
</style>
</head>
<body>
<script>
$(function(){
	$.validator.setDefaults({
		highlight: function(element){
			$(element)
			.closest('.form-group')
			.addClass('has-error')
		},
		unhighlight: function(element){
			$(element)
			.closest('.form-group')
			.removeClass('has-error')
		}
	});
	
	$.validate({
		rules:
		{	
		    password: "required",
			birthDate: "required",
			weight: {
			    required:true,
			    number:true
			},
			height:  {
			    required:true,
			    number:true
			},
			email: {
				required: true,
				email: true
			}
		},
			messages:{			
				email: {
				required: true,
				email: true
			}
		},
				password: {
					required: " Please enter password"
				},
				birthDate: {
					required: " Please enter birthdate"
				},
				email: {
					required: ' Please enter email',
					email: ' Please enter valid email'
				},
				weight: {
					required: " Please enter your weight",
					number: " Only numbers allowed"
				},
				height: {
					required: " Please enter your height",
					number: " Only numbers allowed"
				},
			}
			
	});
});
</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag -------->
<div class="container">
            <form class="form-horizontal" role="form" action="AddbloodbankServlet" method="POST">
                <h2>Registration</h2>
                   <div class="form-group">
                    <label for="Bloodbank" class="col-sm-3 control-label">Bloodbank Name  *</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" placeholder="Bloodbank Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Location" class="col-sm-3 control-label">Location   *</label>
                    <div class="col-sm-9">
                        <input type="text" name="location" placeholder="Location" class="form-control" autofocus>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Address(with D.no;,area)   *</label>
                    <div class="col-sm-9">
                        <input type="text" name="address" placeholder="address" class="form-control" autofocus>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="quantity of A positive" class="col-sm-3 control-label">quantity of A+ve </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofA+ve" placeholder="quantity of A positive" class="form-control" name= "quantity of A positive">
                    </div>
                </div>
               <div class="form-group">
                    <label for="quantity of B positive" class="col-sm-3 control-label">quantity of B+ve </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofB+ve" placeholder="quantity of B positive" class="form-control" name= "quantity of B positive">
                    </div>
                </div>
                <div class="form-group">
                    <label for="quantity of AB positive" class="col-sm-3 control-label">quantity of AB+ve </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofAB+ve" placeholder="quantity of AB positive" class="form-control" name= "quantity of AB positive">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="quantity of O positive" class="col-sm-3 control-label">quantity of O+ve </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofO+ve" placeholder="quantity of O positive" class="form-control" name= "quantity of O positive">
                    </div>
                </div>
                <div class="form-group">
                    <label for="quantity of A negative" class="col-sm-3 control-label">quantity of A-ve</label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofA-ve" placeholder="quantity of A negative" class="form-control" name= "quantity of A negative">
                    </div>
                </div>
                <div class="form-group">
                    <label for="quantity of B negative" class="col-sm-3 control-label">quantity of B-ve</label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofB-ve" placeholder="quantity of B negative" class="form-control" name= "quantity of B negative">
                    </div>
                </div>
                <div class="form-group">
                    <label for="quantity of AB negative" class="col-sm-3 control-label">quantity of AB-ve  </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofAB-ve" placeholder="quantity of AB negative" class="form-control" name= "quantity of AB negative">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="quantity of O negative" class="col-sm-3 control-label">quantity of O-ve </label>
                    <div class="col-sm-9">
                        <input type="text" name="quantityofO-ve" placeholder="quantity of O negative" class="form-control" name= "quantity of O negative">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Phone number </label>
                    <div class="col-sm-9">
                        <input type="text" name="phoneNumber" placeholder="Phone number" class="form-control">
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        </form>
</body>
</html>