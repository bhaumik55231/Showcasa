<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - emailID already Registered</title> 
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="css/font-awesome.css" rel="stylesheet">
    
    <!-- Stylesheets -->
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />
        
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
        <div class="error-wrapper">
           

            <div class="error">
                <img alt='' src='img/.png' class="error__image">
                <h1 class="error__text">sorry, Invalid credentials</h1>
                <a href="index.jsp" class="btn btn-md btn--warning">return to homepage</a>
                <a href="login.jsp" class="btn btn-md btn--warning">return to Login</a>
            </div>
        </div>

        <div class="copy-bottom">
            <p class="copy">&copy; Showcasa, 2016. All rights reserved.<%=session.getAttribute("task_enc") %></p>
        </div>

    </div>

</body>
</html>