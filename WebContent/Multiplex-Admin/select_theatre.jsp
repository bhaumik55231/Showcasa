<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
    
<!-- Mirrored from yukon.tzdthemes.com/html/plugins-tables_datatable.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Mar 2016 04:14:36 GMT -->
<head>
		<meta charset="UTF-8">
		<title>Yukon Admin HTML v1.6 (plugins-tables_datatable)</title>
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="http://yukon.tzdthemes.com/html/favicon.ico">

        <!-- bootstrap framework -->
		<link href="http://yukon.tzdthemes.com/html/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="all">
		
        <!-- icon sets -->
            <!-- elegant icons -->
                <link href="http://yukon.tzdthemes.com/html/assets/icons/elegant/style.css" rel="stylesheet" media="all">
            <!-- elusive icons -->
                <link href="http://yukon.tzdthemes.com/html/assets/icons/elusive/css/elusive-webfont.css" rel="stylesheet" media="all">
            <!-- flags -->
                <link rel="stylesheet" href="http://yukon.tzdthemes.com/html/assets/icons/flags/flags.css" media="all">
            <!-- scrollbar -->
                <link rel="stylesheet" href="http://yukon.tzdthemes.com/html/assets/lib/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">


        <!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>

        <!-- main stylesheet -->
		<link href="http://yukon.tzdthemes.com/html/assets/css/main.min.css" rel="stylesheet" media="all" id="mainCss">

        <!-- print stylesheet -->
        <link href="http://yukon.tzdthemes.com/html/assets/css/print.css" rel="stylesheet" media="print">

        <!-- moment.js (date library) -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/moment-with-langs.min.js"></script>

    </head>
    <body class="side_menu_active side_menu_expanded">
        <div id="page_wrapper">

            <!-- header -->
            <%@include file="header.jsp"%>
            
           <!-- breadcrumbs -->
            <!-- <nav id="breadcrumbs">
                <ul>
                    <li><a href="http://yukon.tzdthemes.com/html/dashboard.html">Home</a></li>
		            <li><span>Plugins</span></li>
		            <li><span>Tables</span></li>
		            <li><span>Datatable</span></li>
		        </ul>
            </nav> -->

            <!-- main content -->
            <div id="main_wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <!-- <div class="col-md-2">
                            <div class="list-group">
                                <a href="http://yukon.tzdthemes.com/html/plugins-tables_footable.html" class="list-group-item">Footable</a>
                                <a href="javascript:void(0)" class="active list-group-item">Datatable</a>
                            </div>
                        </div> -->
                        <div class="col-md-12">
                        <blockquote><h1><strong>Select Theatre</strong></h1><br></blockquote>
					
                            <table id="datatable_demo" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                 <thead>
				                        <tr>
				                        	<th>Theatre Id</th>
				                            <th>Theatre Name</th>
				                            <th>Screen</th>
				                            <th>Action</th>
				                        </tr>
				                    </thead>

									<tfoot>
										<tr>
											<th>#</th>
				                            <th>Theatre Name</th>
				                            <th>Screen</th>
				                            <th>Action</th>
											</tr>
									</tfoot>

				                    <tbody>
				                    	
				                    	<%=session.getAttribute("put_code") %>
				                                                
				                    </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- main menu -->
             <%@include file="menu.jsp"%>
			<!-- main content -->
            </div>

        <!-- jQuery -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/jquery.min.js"></script>
        <!-- jQuery Cookie -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/jqueryCookie.min.js"></script>
        <!-- Bootstrap Framework -->
        <script src="http://yukon.tzdthemes.com/html/assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- retina images -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/retina.min.js"></script>
        <!-- switchery -->
        <script src="http://yukon.tzdthemes.com/html/assets/lib/switchery/dist/switchery.min.js"></script>
        <!-- typeahead -->
        <script src="http://yukon.tzdthemes.com/html/assets/lib/typeahead/typeahead.bundle.min.js"></script>
        <!-- fastclick -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/fastclick.min.js"></script>
        <!-- match height -->
        <script src="http://yukon.tzdthemes.com/html/assets/lib/jquery-match-height/jquery.matchHeight-min.js"></script>
        <!-- scrollbar -->
        <script src="http://yukon.tzdthemes.com/html/assets/lib/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- Yukon Admin functions -->
        <script src="http://yukon.tzdthemes.com/html/assets/js/yukon_all.js"></script>

	    <!-- page specific plugins -->

            <!-- datatable -->
            <script src="http://yukon.tzdthemes.com/html/assets/lib/DataTables/media/js/jquery.dataTables.min.js"></script>
            <script src="http://yukon.tzdthemes.com/html/assets/lib/DataTables/extensions/FixedHeader/js/dataTables.fixedHeader.min.js"></script>
            <script src="http://yukon.tzdthemes.com/html/assets/lib/DataTables/media/js/dataTables.bootstrap.js"></script>

            <script>
                $(function() {
                    // footable
                    yukon_datatables.p_plugins_tables_datatable();
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

<!-- Mirrored from yukon.tzdthemes.com/html/plugins-tables_datatable.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Mar 2016 04:14:37 GMT -->
</html>
