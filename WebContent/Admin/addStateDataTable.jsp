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
		<nav id="breadcrumbs">
		<ul>
			<li><a href="dashboard.html">Home</a></li>
			<li><span>Plugins</span></li>
			<li><span>Tables</span></li>
			<li><span>Datatable</span></li>
		</ul>
		</nav>

		<!-- main content -->
		<div id="main_wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2">
						<div class="list-group">
						
							<a href="userRegistrationDataTable.jsp" class="list-group-item">User_Registration Datatable</a>
							<a href="addCountryDataTable.jsp" class="list-group-item">Add_Country Datatable</a>
							<a href="javascript:void(0)" class="active list-group-item">Add_State Datatable</a>
							<a href="addCityDataTable.jsp" class="list-group-item">Add_City Datatable</a>
						</div>
					</div>
					<div class="col-md-10">
						<div style="position: relative;"
							class="dataTables_wrapper form-inline dt-bootstrap no-footer"
							id="datatable_demo_wrapper">
							
							<table style="width: 100%;"
								aria-describedby="datatable_demo_info" role="grid"
								id="datatable_demo"
								class="table table-striped table-bordered dataTable no-footer"
								cellspacing="0" width="100%">
								<thead>
									<tr role="row">
									<th aria-label="State Id: activate to sort column ascending"
											aria-sort="ascending" style="width: 145px;" colspan="1"
											rowspan="1" aria-controls="datatable_demo" tabindex="0"
											class="sorting_asc"><span class="arrow_up-down_alt bs_ttip"></span>State Id</th>
									
									
										
											<th aria-label="State Name: activate to sort column ascending"
											aria-sort="ascending" style="width: 145px;" colspan="1"
											rowspan="1" aria-controls="datatable_demo" tabindex="0"
											class="sorting_asc"><span class="arrow_up-down_alt bs_ttip"></span>State Name</th>
										<th aria-label="State Description: activate to sort column ascending"
											style="width: 238px;" colspan="1" rowspan="1"
											aria-controls="datatable_demo" tabindex="0" class="sorting"><span class="arrow_up-down_alt bs_ttip"></span>State Description</th>
										
									</tr>
								</thead>
								<tbody>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/showcasa_data" user="root" password="root" var="c"/>
<sql:query var="j" dataSource="${c}">Select * from add_state_vo </sql:query>
<c:forEach items="${j.rows}" var="i">
<tr class="odd" role="row">

										<td class="sorting_1">${i.STATE_ID }</td>
										
										<td>${i.STATE_NAME}</td>
										<td>${i.STATE_DESCRIPTION}</td>
										
									</tr>
									</c:forEach>
								</tbody>
							</table>
							
							
							
							
							
							
							
						</div>
						
						
						
					</div>
				</div>
			</div>
		</div>

		<!-- main menu -->
		<%@include file="menu.jsp"%>
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
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'js/analytics.js', 'ga');

		ga('create', 'UA-54304677-1', 'auto');
		ga('send', 'pageview');
	</script>

</body>
</html>
