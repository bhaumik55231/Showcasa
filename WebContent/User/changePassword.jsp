<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script>
function Validation(){
	var password=document.getElementById("password").value;
	var password1=document.getElementById("password1").value;
	
	var pass=/^[A-Za-z]\w{5,14}$/;
	if (password != ''&& password1 != '' ) {
		if(password.length >=6 && password.length <=13 && password.match(pass)){
			if(password1.match(password)){
				return true;
			}
			else{
				alert ("Confirm Password does't match with Password");
				return false;
			}
		}
		else{
			alert ("The Password Should contain only alphabetical values and length must be between 6 & 13 characters!");
			return false;
		}
	}
	else{
		alert ("All fields are required.....!");
        return false;
	}
	
}




</script>

	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Change Password</title>
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
         <%
       String a=(String)session.getAttribute("username");
       if(a!=null){%>
    	   <%@include file="header.jsp" %>   
       <%}
       else{%>
    	   <%@include file="header1.jsp" %><%
       }
       %>
          
        <!-- Search bar -->
        
        
        <!-- Main content -->
        <br><br>
<br>                <form class="login" method='post' >
                    <p class="login__title">Change Password<br></p>

                    
                    
                </form>
                <form action="<%=request.getContextPath() %>/changePasswordController" method="POST" onsubmit="return Validation()"> 
                <input type="hidden" name="flag" value="change"/> 
                <input type="hidden" name="USERID" value="<%=session.getAttribute("userid")%>"/>  
                    <div class="field-wrap">
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                 
                 <input type='password' required=""  placeholder='Old Password' name='oldpassword' class="login__input"><br><br>
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                 
                 <input type='password' required="" id="password" placeholder='New Password' name='newpassword1' class="login__input"><br><br>
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                 
                 <input type='password' required="" id="password1" placeholder='Confirm New Password' name='newpassword2'  onblur="confirmPass()" class="login__input"><br><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type='submit' class="btn btn-sm btn--warning btn--wider">Change Password</button>
                    <button type='button' class="btn btn-sm btn--warning btn--wider">Cancel</button>
                     </div>
                    <input type="hidden" name="flag" value="login"/>
                 
                 
                    <div class="field-wrap">
                        
                        
                        
                        <!-- <a href="#" class="login__tracker form__tracker">Forgot password?</a> -->
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
