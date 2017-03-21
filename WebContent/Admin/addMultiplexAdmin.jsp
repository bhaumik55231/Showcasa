<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="${pageContext.request.contextPath}/Admin/">
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Multiplex Admin Regitration</title>
</head>
<body>

    
		<meta charset="UTF-8">
		<title>Showcasa Admin(dashboard)</title>
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <!-- bootstrap framework -->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="all">
		
        <!-- icon sets -->
            <!-- elegant icons -->
                <link href="css/style.css" rel="stylesheet" media="all">
            <!-- elusive icons -->
                <link href="css/elusive-webfont.css" rel="stylesheet" media="all">
            <!-- flags -->
                <link rel="stylesheet" href="css/flags.css" media="all">
            <!-- scrollbar -->
                <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">


        <!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>

        <!-- main stylesheet -->
		<link href="css/main.min.css" rel="stylesheet" media="all" id="mainCss">

        <!-- print stylesheet -->
        <link href="css/print.css" rel="stylesheet" media="print">

        <!-- moment.js (date library) -->
        <script src="js/moment-with-langs.min.js"></script>

    </head>
    <body class="side_menu_active side_menu_expanded">
        <div id="page_wrapper">

            <!-- header -->
            
<%@include file="header.jsp" %>
            <!-- breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="addMultiplexAdmin.jsp">Add Multiplex Admin</a></li>        </ul>
            </nav>

            <!-- main content -->
                    
            
<div id="main_wrapper">
<div class="page-title">
					<h3>Add Multiplex Admin</h3>
				</div><br>

<form class="form-horizontal" action="<%=request.getContextPath()%>/multiplexAdminController" method="post" name="user" onsubmit="return Validation()">
  <div class="form-group">
    <label class="col-sm-2 control-label">Multiplex Name:*</label>
    <div class="col-sm-10">
    <select name="multiplex_id" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select Multiplex</option>
	                          		<%=session.getAttribute("multiplex_list") %>
	                         		</select>
	                         		 </div>
  </div>
  
  
  
  <div class="form-group">
    <label class="col-sm-2 control-label">Assign Username:*</label>
    <div class="col-sm-10">
      <input type="text" id="username" class="form-control" placeholder="" name="multiplex_username" required="">
    </div>
  </div>
  
  <div class="form-group">
    <label class="col-sm-2 control-label">Password:*</label>
    <div class="col-sm-10">
      <input type="password" id="password1" class="form-control" placeholder="Password" required="" name="password">
    </div>
  </div>
  
  
  <div class="form-group">
    <label class="col-sm-2 control-label">Confirm-Password:*</label>
    <div class="col-sm-10">
      <input type="password" id="password2" class="form-control" placeholder="Re-enter Password" required="" name="reenterpassword">
    </div>
  </div>



<script>
function Validation(){
	var username=document.getElementById("username").value;
	var password1=document.getElementById("password1").value;
	var password2=document.getElementById("password2").value;
	
	var pass=/^[A-Za-z0-9]\w{5,14}$/;
	
	if (username != '' && password1 != '' && password2 !=''){
		if(password1.length >=6 && password1.length <=13 && password1.match(pass)){
			if(password2.match(password1)){
				//alert(password2);
		return true;
			}
			else{
				alert("Password and Confirm Password Doesn't Match");
				return false;
			}
		}
		else{
			alert("Password must be between 5 to 14 characters and should not contain special Symbols");
			return false;
			
		}
	}
	else{
		alert("All Fields are Required.");
	}
}
</script>

<script type="text/javascript">

function getStates(){
	
}
</script>
  
  <input type="hidden" name="flag" value="add_multiplex_admin">
  <input type="hidden" name="admin_name" value=<%= session.getAttribute("session_name") %>>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Register</button>
      <button type="reset" class="btn btn-primary">Reset</button>
      <button type="button" class="btn btn-primary">Cancel</button>
    </div>
  </div>
</form>
</div>

<!-- main menu -->
            <%@include file="menu.jsp" %>

        </div>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Cookie -->
        <script src="js/jqueryCookie.min.js"></script>
        <!-- Bootstrap Framework -->
        <script src="js/bootstrap.min.js"></script>
        <!-- retina images -->
        <script src="js/retina.min.js"></script>
        <!-- switchery -->
        <script src="js/switchery.min.js"></script>
        <!-- typeahead -->
        <script src="js/typeahead.bundle.min.js"></script>
        <!-- fastclick -->
        <script src="js/fastclick.min.js"></script>
        <!-- match height -->
        <script src="js/jquery.matchHeight-min.js"></script>
        <!-- scrollbar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- Yukon Admin functions -->
        <script src="js/yukon_all.js"></script>

	    <!-- page specific plugins -->

            <!-- c3 charts -->
            <script src="js/d3.min.js"></script>
            <script src="js/c3.min.js"></script>
            <!-- vector maps -->
            <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="js/jquery-jvectormap-world-mill-en.js"></script>
            <!-- countUp animation -->
            <script src="js/countUp.min.js"></script>
            <!-- easePie chart -->
            <script src="js/jquery.easypiechart.min.js"></script>

            <script>
                $(function() {
                    // c3 charts
                    yukon_charts.p_dashboard();
                    // countMeUp
                    yukon_count_up.init();
                    // easy pie chart
                    yukon_easyPie_chart.p_dashboard();
                    // vector maps
                    yukon_vector_maps.p_dashboard();
                    // match height
                    yukon_matchHeight.p_dashboard();
                })
            </script>
		
        <!-- style switcher -->

        <div class="modal fade hidden-print" id="showCSSModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">CSS Classes</h4>
                    </div>
                    <div class="modal-body">
                        <pre id="showCSSPre"></pre>
                    </div>
                </div>
            </div>
        </div>
	
</body>
</html>