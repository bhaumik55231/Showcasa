<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<base href="${pageContext.request.contextPath}/Multiplex-Admin/">
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
        <%-- <form id="my_form" action="<%=request.getContextPath()%>/addTheatreController" method="get">
                  <input type=text name="flag" value="theatre_number"/>
                  <button type="submit">Submit</button>onLoad="document.getElementById('my_form').submit() </form>
                  --%>
       
   
        <div id="page_wrapper">

            <!-- header -->
           <%@include file="header.jsp" %>

            <!-- breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="dashboard.jsp">Home</a></li>        </ul>
            </nav>

            <!-- main content -->
            <div id="main_wrapper">
            
            
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="info_box_var_1 box_bg_a">
                                <div class="info_box_body">
                                    <!-- <span class="info_box_icon icon_group"></span> -->
                                    <span class="info_box_icon icon_box-checked"></span>
                                    <span class="countUpMe" data-endVal="<%=session.getAttribute("tickets_week")%>"><%=session.getAttribute("tickets_week")%></span>
                                </div>
                                <div class="info_box_footer">
                                    Tickets Sold (Last 1 week)
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="info_box_var_1 box_bg_b">
                                <div class="info_box_body">
                                    <span class="info_box_icon icon_menu-square_alt"></span>
                                    <span class="countUpMe" data-endVal="<%=session.getAttribute("show_week")%>"><%=session.getAttribute("show_week")%></span>
                                </div>
                                <div class="info_box_footer">
                                    Total Shows (Last 1 week)
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="info_box_var_1 box_bg_c">
                                <div class="info_box_body">
                                    <span class="info_box_icon icon_wallet"></span>
                                    Rs<span class="countUpMe" data-endVal="<%=session.getAttribute("revenue_week")%>"><%=session.getAttribute("revenue_week")%></span>
                                </div>
                                <div class="info_box_footer">
                                    Sale
                                    <small>(last 1 week)</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="info_box_var_1 box_bg_d">
                                <div class="info_box_body">
                                    <span class="info_box_icon icon_film"></span>
                                    <span class="countUpMe" data-endVal="<%=session.getAttribute("movie_week")%>"><%=session.getAttribute("movie_week")%></span>
                                </div>
                                <div class="info_box_footer">
                                    Total Movie(s) (Last 1 week)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row_full mHeight">
                        <div class="col-lg-4">
                            <div class="easy_chart_wrapper mHeight-item">
                                <div class="easy_chart_a easy_chart" data-percent="50">
                                    <span class="easy_chart_percent"></span>
                                </div>
                                <div class="easy_chart_info">
                                    <h4 class="easy_chart_heading">Orders completed</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam doloremque mollitia possimus tempora&hellip; <a href="#">more</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="easy_chart_wrapper mHeight-item">
                                <div class="easy_chart_b easy_chart" data-percent="70">
                                    <span class="easy_chart_percent">136</span>
                                </div>
                                <div class="easy_chart_info">
                                    <h4 class="easy_chart_heading">Confirmed registrations</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam doloremque mollitia possimus tempora&hellip; <a href="#">more</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="easy_chart_wrapper mHeight-item">
                                <div class="easy_chart_c easy_chart" data-percent="72">
                                    <span class="easy_chart_icon icon_chat_alt"></span>
                                </div>
                                <div class="easy_chart_info">
                                    <h4 class="easy_chart_heading">New comments</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam doloremque mollitia possimus tempora&hellip; <a href="#">more</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <!--   <div class="row row_full">
                        <div class="col-md-12">
                            <div class="heading_a">
                                <span class="heading_text">Tasks assigned to Me</span>
                                <div class="pull-right">
                                    <a href="#"><i class="el-icon-tasks heading_icon"></i></a>
                                </div>
                            </div>
                            <ul class="list-group list_group_sep">
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-1"><span class="icon_star list_icon"></span></div>
                                        <div class="col-md-2">
                                            <div class="label label-danger">High</div>
                                        </div>
                                        <div class="col-md-2"><a href="#"><strong>YUK-31</strong></a></div>
                                        <div class="col-md-4"><span class="text-muted small">Lorem ipsum dolor sit amet&hellip;</span></div>
                                        <div class="col-md-3">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-danger" style="width: 28%">
                                                    <span class="sr-only">28% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-1"><span class="icon_star_alt list_icon"></span></div>
                                        <div class="col-md-2">
                                            <div class="label label-warning">Medium</div>
                                        </div>
                                        <div class="col-md-2"><a href="#"><strong>ARW-21</strong></a></div>
                                        <div class="col-md-4"><span class="text-muted small">Lorem ipsum dolor&hellip;</span></div>
                                        <div class="col-md-3">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-warning" style="width: 62%">
                                                    <span class="sr-only">62% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-1"><span class="icon_star_alt list_icon"></span></div>
                                        <div class="col-md-2">
                                            <div class="label label-success">Low</div>
                                        </div>
                                        <div class="col-md-2"><a href="#"><strong>YUK-63</strong></a></div>
                                        <div class="col-md-4"><span class="text-muted small">Lorem ipsum dolor sit&hellip;</span></div>
                                        <div class="col-md-3">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-success" style="width: 80%">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-1"><span class="icon_star list_icon"></span></div>
                                        <div class="col-md-2">
                                            <div class="label label-danger">High</div>
                                        </div>
                                        <div class="col-md-2"><a href="#"><strong>DES-31</strong></a></div>
                                        <div class="col-md-4"><span class="text-muted small">Lorem ipsum dolor&hellip;</span></div>
                                        <div class="col-md-3">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-danger" style="width: 12%">
                                                    <span class="sr-only">12% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    --> <!-- <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <div class="heading_a">
                                <span class="heading_text">Quick Settings</span>

                                <div class="pull-right">
                                    <a href="#"><i class="el-icon-cog heading_icon"></i></a>
                                </div>
                            </div>
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="pull-right">
                                        <input type="checkbox" class="js-switch mini-switch" checked>
                                    </div>
                                    Site Online
                                </li>
                                <li class="list-group-item">
                                    <div class="pull-right">
                                        <input type="checkbox" class="js-switch mini-switch">
                                    </div>
                                    Cache Enabled
                                </li>
                                <li class="list-group-item">
                                    <div class="pull-right">
                                        <input type="checkbox" class="js-switch mini-switch" checked>
                                    </div>
                                    Catalog Mode
                                </li>
                                <li class="list-group-item">
                                    <div class="pull-right">
                                        <input type="checkbox" class="js-switch-blue mini-switch" checked>
                                    </div>
                                    Statistics
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="heading_a">
                                <span class="heading_text">Orders</span>
                            </div>
                            <div id="c3_orders" style="height:220px"></div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="heading_a">
                                <span class="heading_text">Users (by age)</span>
                            </div>
                            <div id="c3_users_age" style="height:220px"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading_a">
                                <span class="heading_text">Sales</span>
                                <div class="pull-right">
                                    <button class="btn btn-xs btn-default chart_switch" data-chart="line">Line</button>
                                    <button class="btn btn-xs btn-link chart_switch" data-chart="bar">Bar</button>
                                </div>
                            </div>
                            <div id="c3_7_days" style="height:280px"></div>
                        </div>
                    </div>
                </div>
            </div> -->
            
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
