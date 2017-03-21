<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
 <base href="${pageContext.request.contextPath}/Admin/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Multiplex Admin Regitration</title>
</head>


    
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
                    <li><a href="addMovie1.jsp">Add Movie</a></li>        </ul>
            </nav>

            <!-- main content -->
                    
            
<div id="main_wrapper">
<div class="page-title">
					<h3>Add Movie</h3>
				</div><br>
<form class="form-horizontal" action="<%=request.getContextPath()%>/addMovieController" method="post" enctype="multipart/form-data">
	 <input type="hidden" name="flag" value="add_movie"> 
	 <input type="hidden" name="value" value="1"> 
	  
	  
	 
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Movie Name</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control " placeholder="Enter Movie Name" name="moviename" required>
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Duration</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control " placeholder="Enter Duration of Movie" name="duration" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Poster</label>
	    <div class="col-sm-10">
	     <input type="file"  name="abc" required>
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Age Restriction</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Enter Age Restriction "  name="agerestriction" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Actor 1</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Actor"  name="actor1" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Actor 2</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Actor"  name="actor2" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Actor 3</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Actor"  name="actor3" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Actor 4</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Actor"  name="actor4" required>
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Actor 5</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Actor"  name="actor5" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Category</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Type of Category"  name="category" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Director</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Director"  name="director" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Writer</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Name of Writer"  name="writer" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Release date</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Date of Release"  name="releasedate" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Youtube Link</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Enter Youtube Link"  name="link" required>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label">Plot</label>
	    <div class="col-sm-10">
	     <input type="text" class="form-control" placeholder="Enter The Plot of Movie"  name="plot" required>
	    </div>
	  </div>
	  
	  
	  
	  
	  
	  
	  <div class="form-actions text-center">
                    	<input type="submit" value="Add" class="btn btn-success">
                    	<input type="reset" value="Reset" class="btn btn-warning">
                    	<a href="admin.jsp"><input type="button" value="Cancel" class="btn btn-danger"></a>
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