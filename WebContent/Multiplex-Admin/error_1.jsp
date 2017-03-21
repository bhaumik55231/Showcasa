<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Showcasa Admin Error</title>
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- bootstrap framework -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- main stylesheet -->
		<link href="css/main.min.css" rel="stylesheet" media="screen">

    </head>
    <body class="error_page">

        <div id="error_wrapper">
            <div id="error_wrapper_inner">
                <h1 class="error_heading"></h1>
                <h2 class="error_subheading">Entered Data is already <span>present</span> in Database</h2>
                <p><a href="dashboard.jsp">Go Back</a></p>
            </div>
        </div>
        
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	  
		ga('create', 'UA-54304677-1', 'auto');
		ga('send', 'pageview');
	</script>
	
    </body>
</html>