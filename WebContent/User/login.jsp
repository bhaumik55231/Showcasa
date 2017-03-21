<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script>
function Validation(){
	var email = document.getElementById("emailid").value;
	var password = document.getElementById("password").value;
	var emailReg =/^[a-zA-Z]+([_\.-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z0-9]+)*(\.[a-zA-Z]{2,4})+$/;
	if (email != '' && password != '') {
		if(email.match(emailReg)){
			return true;
		}
		else{
			alert ("Invalid Email Address...!!!");
			return false;
			}
		}
	else{
		alert("All fields are Required!");
	}
}
</script>

	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Login</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="js/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
        <!-- Banner -->
      

        <!-- Header section -->
        <%@include file="header1.jsp" %>        
        <!-- Search bar -->
        
        
        <!-- Main content -->
                <form class="login" method='post' >
                    <p class="login__title">Login <br><span class="login-edition">welcome to Showcasa</span></p>

                    <div class="social social--colored">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                    </div>

                    <p class="login__tracker">or</p>
                </form>
                <form action="<%=request.getContextPath()%>/userLoginController" method="post" onsubmit="return Validation()">    
                    <div class="field-wrap">
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                 
                 <input type='email' placeholder='Email' name='emailid' id='emailid' class="login__input" required=""><br><br>
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                 
                 <input type='password' placeholder='Password' name='password' id="password" class="login__input" required=""><br><br>
                 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type='submit' class="btn btn-sm btn--warning btn--wider">Login</button>
                    <button type='button' class="btn btn-sm btn--warning btn--wider">Cancel</button>
                     </div>
                    <input type="hidden" name="flag" value="login"/>
                 
                 
                    <div class="field-wrap">
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="email.jsp" class="login__tracker form__tracker">Forgot password?</a>       
                       &nbsp;&nbsp;&nbsp; <a href="register.jsp" class="login__tracker form__tracker">Create Account</a>
                        
                        <!--  -->
                    </div>
                </form>
        
        <div class="clearfix"></div>
    </div>

    <%@include file="footer.jsp" %>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/jquery.selectbox-0.2.min.js"></script>
        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
        

</body>
</html>
