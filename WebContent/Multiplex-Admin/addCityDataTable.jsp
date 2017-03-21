<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Yukon Admin HTML v1.6 (plugins-tables_datatable)</title>
<meta name="viewport"
	content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans&amp;subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>

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
		<%@include file="header.jsp"%>



		<!-- breadcrumbs -->
		<!-- <nav id="breadcrumbs">
		 <ul>
			<li><a href="dashboard.jsp">Dashboard</a></li>
			<li><span>Plugins</span></li>
			<li><span>Tables</span></li>
			<li><span>Datatable</span></li>
		</ul> 
		</nav> -->
<!-- main menu -->
		<%@include file="menu.jsp"%>
		<!-- main content -->
		<div id="main_wrapper">
			<div class="container-fluid">
				<div class="row">
					<!-- <div class="col-md-1">
						
					</div> -->
					<div class="col-md-12">
					<blockquote><h1><strong>Current Shows</strong></h1><br></blockquote>
							
							<table id="datatable_demo" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Show ID</th>
                                        <th>Screen</th>
                                        <th>Start Time</th>
                                        <th>Movie Name</th>
                                        <th>Days</th>
                                        <th>Earnings (Rs)</th>
                                        <th>Action1</th>
                                        <th>Action2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>10:30</td>
                                        <td>Airlift</td>
                                        <td>10</td>
                                        <td>320,800</td>
                                        <td><a class="btn btn-primary" href="#" role="button">More Information</a></td>
                                    	<td><a class="btn btn-danger" href="#" role="button">Delete</a></td>    
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>10:30</td>
                                        <td>Airlift</td>
                                        <td>11</td>
                                        <td>500</td>
                                        <td><a class="btn btn-primary" href="#" role="button">More Information</a></td>
                                    	<td><a class="btn btn-danger" href="#" role="button">Delete</a></td>    
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Screen</th>
                                        <th>Start Time</th>
                                        <th>Movie Name</th>
                                        <th>Days</th>
                                        <th>Earnings (Rs)</th>
                                        <th>Action1</th>
                                        <th>Action2</th>
                                    </tr>
                                </tfoot>
                            </table>
						</div>	
					</div>
				</div>
			</div>
		</div>

		
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

	<!-- datatable -->
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.fixedHeader.min.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>

	<script>
		$(function() {
			// footable
			yukon_datatables.p_plugins_tables_datatable();
		})
	</script>

	<!-- style switcher -->
	
	<div class="modal fade hidden-print" id="showCSSModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
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
