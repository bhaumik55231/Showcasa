<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Showcasa Admin Login Page 2</title>
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- bootstrap framework -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- main stylesheet -->
		<link href="css/main.min.css" rel="stylesheet" media="screen">

    </head>
    <body class="login_page2">

        <div class="login_container">
            <form id="login_form" action="" class="form-horizontal">
                <h2 class="heading_a"><span class="heading_text">Log in</span></h2>
                <div class="form-group">
                    <label for="login_username" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" placeholder="User" id="login_username" autocomplete="off">
                    </div>
                </div>
                <div class="form-group">
                    <label for="login_password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" placeholder="password" id="login_password" autocomplete="off">
                    </div>
                </div>
                <div class="form-group sepH_c">
                    <div class="col-sm-9 col-sm-offset-3">
                        <a ui-sref="auth.home" class="btn btn-sm btn-primary">Log in</a>
                    </div>
                </div>
                <div class="text_hr"><span>or use</span></div>
                <div class="row">
                    <div class="col-xs-6"><button class="btn btn-sm btn-default btn-block" type="button"><span class="el-icon-github"></span> GitHub</button></div>
                    <div class="col-xs-6"><button class="btn btn-sm btn-default btn-block" type="button"><span class="el-icon-twitter"></span> Twitter</button></div>
                    
                </div>
            </form>
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