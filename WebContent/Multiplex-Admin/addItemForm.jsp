<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
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
    <script>
    function addFile()
{
	var fileUpload = document.getElementById("fileUpload");
	
	var newFile = document.createElement("input");
	newFile.setAttribute("type", "file");
	newFile.setAttribute("name", "abc1");
	
	var br = document.createElement("br");
	
	fileUpload.appendChild(br);
	fileUpload.appendChild(newFile);
}
    </script>
    <body class="side_menu_active side_menu_expanded">
        <div id="page_wrapper">

            <!-- header -->
            
<%@include file="header.jsp" %>
            <!-- breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="#">Search City</a></li>        </ul>
            </nav>

            <!-- main content -->
                   
	<div id="main_wrapper">
	

<!-- Page header -->
			<div class="page-header">
				<div class="page-title">
					<h3> Manage User </h3>
				</div>

				
			</div>
			<!-- /page header -->
<form class="form-horizontal" action="<%=request.getContextPath()%>/itemController" method="post" name="user" enctype="multipart/form-data">
<div class="form-group">
  <%-- --%><label class="col-sm-2 control-label">Item Title</label>
  <div class="col-sm-10">
  <input type="text" name="item_title" class="form-control">
  </div></div><br><br>
<div class="form-group">
    <label class="col-sm-2 control-label">Item Description</label>
    <div class="col-sm-10">
    <textarea name="item_description" rows="3" cols="100" required="" ></textarea><br><br>
      </div>
  </div>
  <div class="form-group">
  <label class="col-sm-2 control-label">Price</label>
  <div class="col-sm-10">
  <input type="text" name="item_price" class="form-control">
  </div></div><br><br>
   <div class="form-group">
   <label class="col-sm-2 control-label">Item Image</label>
	    <div id="fileUpload" class="col-sm-3">
	    	<input type="file" name="abc" />
	    	</div>
	    <div class="col-sm-5">
	    <input type="button" onclick="addFile()" value="Add" /></div>
	
	 <br><br>   
	
		</div><br><div class="col-sm-12" class="form-group">
		<input type="hidden" name="do" value="add_item"/> 
		
		<input type="hidden" name="item_seller" value="jon"/>
		
		<input type="submit" value="AddItem"/>
		</div>	

</form>
	        	



    
            <!-- main menu -->
            <%@include file="menu.jsp" %>

        

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
