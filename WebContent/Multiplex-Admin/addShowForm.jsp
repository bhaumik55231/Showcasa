<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >

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
    <body class="side_menu_active side_menu_expanded">
        <div id="page_wrapper">

            <!-- header -->
            
 <%@include file="header.jsp" %> 



           <!--   breadcrumbs 
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="addCountry.jsp">Add Screen</a></li>        </ul>
            </nav>
-->
            <!-- main content -->
                   
	<div id="main_wrapper">
	<blockquote>
	<h3><strong>Add Show</strong></h3>
	<h3><%=session.getAttribute("select_theatre_name") %></h3>
	<h4>Screen: <%=session.getAttribute("select_screen_id") %></h4>
	</blockquote>
					
	<form class="form-horizontal" action="<%=request.getContextPath()%>/ticketController" method="post">
	 
	
	  
	  				<div class="form-group">
						<label class="col-sm-2 control-label">Start Hour:Min <span class="mandatory">*</span></label>
						<div class="col-sm-2">
                            
                            	<select name="start_hr" class="required form-control" required="">
                                <option value="" disabled="disabled">Select Start Hour</option>
                                
                                <%for(int i=1; i<=24;i++ ){ %>
                                <option value="<%=i%>"><%=i %></option>
                                <%}%>
                                </select>
						</div>
				
                	    <div class="col-sm-1"><strong><h4 align="center">:</h4></strong></div>
						    
	 
						
							<div class="col-sm-2">
	                            
	                            	<select name="start_min" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select Start Minute</option>
	                                
	                                <%for(int i=0; i<=55;i+=5 ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select>
							</div>
						</div>
	                	
	                	
	                	
						  <div class="form-group">
						    <label class="col-sm-2 control-label">Price 1</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control " placeholder="Enter Price" name="price1" required="">
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label class="col-sm-2 control-label">Price 2</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control " placeholder="Enter Price" name="price2" required="">
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label class="col-sm-2 control-label">Price 3</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control " placeholder="Enter Price" name="price3" required="">
						    </div>
						  </div>
						  
	  
	  
	  					<div class="form-group">
							<label class="col-sm-2 control-label">Movie Name: <span class="mandatory">*</span></label>
							<div class="col-sm-10">
	                            	<select name="movie_id" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select Movie Id</option>
	                          		<%=session.getAttribute("movie_list") %>
	                         		</select>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">Start Date / Month / Year: <span class="mandatory">*</span></label>
						    <div class="col-sm-2">
						    <select name="start_date" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select Start Date</option>
	                                
	                                <%for(int i=1; i<=31;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
	                        <div class="col-sm-1"><strong><h4 align="center">/</h4></strong></div>
						    
						    <div class="col-sm-2">
	                                  <select name="start_month" class="required form-control" required="">
	                                <option value="Select" disabled="disabled">Select Start Month</option>
	                                
	                                <%for(int i=1; i<=12;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
	                                <div class="col-sm-1"><strong><h4 align="center">/</h4></strong></div>
						    
						   <div class="col-sm-2">
	                                  <select name="start_year" class="required form-control" required="">
	                                <option value="Select" disabled="disabled">Year</option>
	                                
	                                
	                                <option value="2016">2016</option>
	                                
	                                </select></div>
						  </div>
						  <div class="form-group">
						    <label class="col-sm-2 control-label">End Date /Month / Year: <span class="mandatory">*</span></label>
						    <div class="col-sm-2">
						    <select name="end_date" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select End Date</option>
	                                
	                                <%for(int i=1; i<=31;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
	                        <div class="col-sm-1"><strong><h4 align="center">/</h4></strong></div>
						    
						    <div class="col-sm-2">
	                                  <select name="end_month" class="required form-control" required="">
	                                <option value="Select" disabled="disabled">Select End Month</option>
	                                
	                                <%for(int i=1; i<=12;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
	                                <div class="col-sm-1"><strong><h4 align="center">/</h4></strong></div>
						    
						   <div class="col-sm-2">
	                                  <select name="end_year" class="required form-control" required="">
	                                <option value="Select" disabled="disabled">Year</option>
	                                
	                                
	                                <option value="2016">2016</option>
	                                
	                                </select></div>
						  </div>
						  </div>
						   
						  <%-- <div class="form-group">
						    <label class="col-sm-2 control-label">End Date & Month: <span class="mandatory">*</span></label>
						    <div class="col-sm-2"><select name="end_date" class="required form-control" required="">
	                                <option value="" disabled="disabled">Select End Date</option>
	                                
	                                <%for(int i=1; i<=31;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
	                         <div class="col-sm-1"><strong><h4 align="center">&</h4></strong></div>
						    <div class="col-sm-2">
	                                  <select name="end_month" class="required form-control" required="">
	                                <option value="Select" disabled="disabled">Select End Month</option>
	                                
	                                <%for(int i=1; i<=12;i++ ){ %>
	                                <option value="<%=i%>"><%=i %></option>
	                                <%} %>
	                                </select></div>
						  </div> --%>
					
	  					<!--
	  					request.getParameter("start_hr");
	  					request.getParameter("start_min");
	  					request.getParameter("price_1");
	  					request.getParameter("price_2");
	  					request.getParameter("price_3");
	  					request.getParameter("movie_name");
	  					
	  					 -->
	  	
	  	
	  <div class="form-actions text-center">
	  <input type="hidden" name="flag" value="add_show">
                    	<input type="submit" value="Add" class="btn btn-success">
                    	<input type="reset" value="Reset" class="btn btn-warning">
                    	
                    	<a href="dashboard.jsp"><input type="button" value="Cancel" class="btn btn-danger"></a>
                    </div></form>
                    
	</div>
	
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
        <div id="style_switcher">
            <a class="switcher_toggle"><i class="icon_cog"></i></a>
            <div class="style_items">
                <div class="heading_b"><span class="heading_text">Top Bar Color</span></div>
                <ul class="clearfix" id="topBar_style_switch">
                    <li class="sw_tb_style_0 style_active" title=""><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_1" title="topBar_style_1"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_2" title="topBar_style_2"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_3" title="topBar_style_3"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_4" title="topBar_style_4"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_5" title="topBar_style_5"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_6" title="topBar_style_6"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_7" title="topBar_style_7"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_8" title="topBar_style_8"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_9" title="topBar_style_9"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_10" title="topBar_style_10"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_11" title="topBar_style_11"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_12" title="topBar_style_12"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_13" title="topBar_style_13"><span class="icon_check_alt2"></span></li>
                    <li class="sw_tb_style_14" title="topBar_style_14"><span class="icon_check_alt2"></span></li>
                </ul>
            </div>
            <hr/>
            <div class="clearfix hidden-sm hidden-md hidden-xs sepH_b">
                <label>Fixed layout</label>
                <div class="pull-right"><input type="checkbox" id="fixed_layout_switch" class="js-switch mini-switch"></div>
            </div>
            <div class="style_items hidden-sm hidden-md hidden-xs" id="fixed_layout_bg_switch">
                <hr/>
                <div class="heading_b"><span class="heading_text">Background</span></div>
                <ul class="clearfix">
                    <li class="sw_bg_0" title="bg_0"></li>
                    <li class="sw_bg_1" title="bg_1"></li>
                    <li class="sw_bg_2" title="bg_2"></li>
                    <li class="sw_bg_3" title="bg_3"></li>
                    <li class="sw_bg_4" title="bg_4"></li>
                    <li class="sw_bg_5" title="bg_5"></li>
                    <li class="sw_bg_6" title="bg_6"></li>
                    <li class="sw_bg_7" title="bg_7"></li>
                </ul>
                <hr/>
            </div>
            <div class="clearfix sepH_b">
                <label>Top Menu</label>
                <div class="pull-right"><input type="checkbox" id="top_menu_switch" class="js-switch mini-switch"></div>
            </div>
            <div class="clearfix sepH_b">
                <label>Hide Breadcrumbs</label>
                <div class="pull-right"><input type="checkbox" id="breadcrumbs_hide" class="js-switch mini-switch"></div>
            </div>
            <div class="text-center sepH_a">
                <button data-toggle="modal" data-target="#showCSSModal" id="showCSS" class="btn btn-default btn-xs btn-outline" type="button">Show CSS</button>
            </div>
        </div>
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
