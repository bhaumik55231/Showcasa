<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta charset="UTF-8">
		<title>Showcasa Admin (pages-mailbox)</title>
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

        <!-- page specific stylesheets -->

            <!-- footable -->
            <link href="css/footable.core.min.css" rel="stylesheet" media="all">
		
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
            <header id="main_header">
                <div class="container-fluid">
                    <div class="brand_section">
                        <a href="admin.jsp"><img src="img/logo.png" alt="site_logo" width="63" height="26"></a>
                    </div>
                    <ul class="header_notifications clearfix">
                        <li class="dropdown">
                            <span class="label label-danger">8</span>
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="el-icon-envelope"></i></a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li>
                                        <img src="img/avatar02_tn.png" alt="" width="38" height="38">
                                        <p><a href="#">Lorem ipsum dolor sit amet&hellip;</a></p>
                                        <small class="text-muted">14.07.2014</small>
                                    </li>
                                    <li>
                                        <img src="img/avatar03_tn.png" alt="" width="38" height="38">
                                        <p><a href="#">Lorem ipsum dolor sit&hellip;</a></p>
                                        <small class="text-muted">14.07.2014</small>
                                    </li>
                                    <li>
                                        <img src="img/avatar04_tn.png" alt="" width="38" height="38">
                                        <p><a href="#">Lorem ipsum dolor&hellip;</a></p>
                                        <small class="text-muted">14.07.2014</small>
                                    </li>
                                    <li>
                                        <img src="img/avatar05_tn.png" alt="" width="38" height="38">
                                        <p><a href="#">Lorem ipsum dolor sit amet&hellip;</a></p>
                                        <small class="text-muted">14.07.2014</small>
                                    </li>
                                    <li>
                                        <a href="#" class="btn btn-xs btn-primary btn-block">All messages</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown" id="tasks_dropdown">
                            <span class="label label-danger">14</span>
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="el-icon-tasks"></i></a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li>
                                        <div class="clearfix">
                                            <div class="label label-warning pull-right">Medium</div>
                                            <small class="text-muted">YUK-21 (24.07.2014)</small>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet&hellip;</p>
                                    </li>
                                    <li>
                                        <div class="clearfix">
                                            <div class="label label-danger pull-right">High</div>
                                            <small class="text-muted">YUK-8 (26.07.2014)</small>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet&hellip;</p>
                                    </li>
                                    <li>
                                        <div class="clearfix">
                                            <div class="label label-success pull-right">Medium</div>
                                            <small class="text-muted">DES-14 (25.07.2014)</small>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet&hellip;</p>
                                    </li>
                                    <li>
                                        <a href="#" class="btn btn-xs btn-primary btn-block">All tasks</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown">
                            <span class="label label-primary">2</span>
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="el-icon-bell"></i></a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li>
                                        <p>Lorem ipsum dolor sit amet&hellip;</p>
                                        <small class="text-muted">20 minutes ago</small>
                                    </li>
                                    <li>
                                        <p>Lorem ipsum dolor sit&hellip;</p>
                                        <small class="text-muted">44 minutes ago</small>
                                    </li>
                                    <li>
                                        <p>Lorem ipsum dolor&hellip;</p>
                                        <small class="text-muted">10:55</small>
                                    </li>
                                    <li>
                                        <p>Lorem ipsum dolor sit amet&hellip;</p>
                                        <small class="text-muted">14.07.2014</small>
                                    </li>
                                    <li>
                                        <a href="#" class="btn btn-xs btn-primary btn-block">All Alerts</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <div class="header_user_actions dropdown">
                        <div data-toggle="dropdown" class="dropdown-toggle user_dropdown">
                            <div class="user_avatar">
                                <img src="img/avatar08_tn.png" alt="" title="Carrol Clark (carrol@example.com)" width="38" height="38">
                            </div>
                            <span class="caret"></span>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="pages-user_profile.html">User Profile</a></li>
                            <li><a href="pages-user_profile2.html">User Profile 2</a></li>
                            <li><a href="login_page.html">Log Out</a></li>
                        </ul>
                    </div>
                    <div class="search_section hidden-sm hidden-xs">
                        <input type="text" class="form-control input-sm">
                        <button class="btn btn-link btn-sm" type="button"><span class="icon_search"></span></button>
                    </div>
                </div>
            </header>

            <!-- breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="admin.jsp">Home</a></li>
		            <li><span>Pages</span></li>
		            <li><span>Mailbox</span></li>
		        </ul>
            </nav>

            <!-- main content -->
            <div id="main_wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-lg-2">
                            <a href="pages-mailbox_compose.html" class="btn btn-primary btn-outline btn-sm">Compose</a>
                            <hr/>
                            <div class="list-group mailbox_menu">
                                <a href="pages-mailbox.html" class="active list-group-item">
                                    <span class="badge badge-danger">96</span>
                                    <span class="menu_icon icon_download"></span>Inbox
                                </a>
                                <a href="pages-mailbox.html" class="list-group-item">
                                    <span class="menu_icon icon_upload"></span>Sent
                                </a>
                                <a href="pages-mailbox.html" class="list-group-item">
                                    <span class="badge badge-danger">52</span>
                                    <span class="menu_icon icon_error-circle_alt"></span>Spam
                                </a>
                                <a href="pages-mailbox.html" class="list-group-item">
                                    <span class="menu_icon icon_pencil-edit"></span>Drafts
                                </a>
                                <a href="pages-mailbox.html" class="list-group-item">
                                    <span class="menu_icon icon_trash_alt"></span>Trash
                                </a>
                            </div>
                        </div>
                        <div class="col-md-9 col-lg-10">
                            <div class="row">
                                <div class="col-md-5 col-md-push-7">
                                    <input id="message_filter" type="text" class="form-control input-sm" placeholder="Search..."/>
                                </div>
                                <div class="col-md-5 col-md-pull-5">
                                    <div class="btn-group btn-group-sm">
                                        <button type="button" class="btn btn-default">Reply</button>
                                        <button type="button" class="btn btn-default">Spam</button>
                                        <button type="button" class="btn btn-default text-danger">Delete</button>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <table id="mailbox_table" class="table table-yuk2 bg-fill toggle-arrow-tiny" data-page-size="20" data-filter="#message_filter">
                                <thead>
                                    <tr>
                                        <th class="cw footable_toggler"></th>
                                        <th class="cw"><input type="checkbox" id="msgSelectAll"></th>
                                        <th class="cw"></th>
                                        <th data-hide="phone,tablet">From</th>
                                        <th>Subject</th>
                                        <th data-hide="phone">Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Toni Hettinger Sr.</td>
                                        <td><a href="pages-mailbox_message.html">Enim adipisci voluptatum eos dolorem fugiat.</a></td>
                                        <td>Mon 30.11.2015</td>
                                    </tr>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Wilfrid Yundt</td>
                                        <td><a href="pages-mailbox_message.html">Veritatis veritatis qui voluptatum iure.</a></td>
                                        <td>Sun 29.11.2015</td>
                                    </tr>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Emely Rogahn</td>
                                        <td><a href="pages-mailbox_message.html">Vel deserunt dolores ab eos eligendi a.</a></td>
                                        <td>Sat 28.11.2015</td>
                                    </tr>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Jarrod Smith</td>
                                        <td><a href="pages-mailbox_message.html">Est veniam laudantium illum.</a></td>
                                        <td>Fri 27.11.2015</td>
                                    </tr>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Paige Wisozk Jr.</td>
                                        <td><a href="pages-mailbox_message.html">Esse voluptatem ad nemo qui at.</a></td>
                                        <td>Thu 26.11.2015</td>
                                    </tr>
                                    <tr class="unreaded">
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Frederick Hills</td>
                                        <td><a href="pages-mailbox_message.html">Rerum velit excepturi ut illum explicabo deleniti.</a></td>
                                        <td>Wed 25.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Muhammad Denesik III</td>
                                        <td><a href="pages-mailbox_message.html">Aut magni blanditiis veniam non ut ex doloremque nemo.</a></td>
                                        <td>Tue 24.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Eileen Beer</td>
                                        <td><a href="pages-mailbox_message.html">Itaque minus eveniet a necessitatibus.</a></td>
                                        <td>Mon 23.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Birdie Osinski</td>
                                        <td><a href="pages-mailbox_message.html">Deleniti illo consequatur eos laboriosam in perspiciatis ut.</a></td>
                                        <td>Sun 22.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Imogene Howell</td>
                                        <td><a href="pages-mailbox_message.html">Consequuntur qui asperiores nulla.</a></td>
                                        <td>Sat 21.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Royal O'Reilly</td>
                                        <td><a href="pages-mailbox_message.html">Aut hic voluptatem in eos.</a></td>
                                        <td>Fri 20.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Vicente Goldner</td>
                                        <td><a href="pages-mailbox_message.html">Quibusdam eius veniam eos at.</a></td>
                                        <td>Thu 19.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Vallie Roob</td>
                                        <td><a href="pages-mailbox_message.html">Rerum voluptatem et vero enim commodi ipsa architecto.</a></td>
                                        <td>Wed 18.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Orrin Ebert</td>
                                        <td><a href="pages-mailbox_message.html">Ipsum quis dolor a et pariatur.</a></td>
                                        <td>Tue 17.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Enos Moen</td>
                                        <td><a href="pages-mailbox_message.html">Facilis enim ut ad ut expedita porro.</a></td>
                                        <td>Mon 16.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Caleigh Johnson</td>
                                        <td><a href="pages-mailbox_message.html">Consequatur earum deleniti quisquam quia quo.</a></td>
                                        <td>Sun 15.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Ms. Winifred Ziemann Sr.</td>
                                        <td><a href="pages-mailbox_message.html">Et quis explicabo dolor et id officiis et.</a></td>
                                        <td>Sat 14.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Margie Johnston</td>
                                        <td><a href="pages-mailbox_message.html">Iure esse officiis odio nostrum aut.</a></td>
                                        <td>Fri 13.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mona Pagac I</td>
                                        <td><a href="pages-mailbox_message.html">Animi et beatae et iste omnis nisi.</a></td>
                                        <td>Thu 12.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Sheila Bernier</td>
                                        <td><a href="pages-mailbox_message.html">Assumenda et architecto aperiam repudiandae quasi et.</a></td>
                                        <td>Wed 11.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Lauriane Ortiz</td>
                                        <td><a href="pages-mailbox_message.html">Velit officiis error unde quas quia incidunt commodi.</a></td>
                                        <td>Tue 10.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Erna Denesik</td>
                                        <td><a href="pages-mailbox_message.html">Quibusdam tempora adipisci aperiam odit nobis dolorem doloribus.</a></td>
                                        <td>Mon 09.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Lenna Gottlieb IV</td>
                                        <td><a href="pages-mailbox_message.html">Dolorem non ut et aspernatur est voluptatum.</a></td>
                                        <td>Sun 08.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Carroll Boyle DDS</td>
                                        <td><a href="pages-mailbox_message.html">Fugit fugit ut et vel ipsa ad.</a></td>
                                        <td>Sat 07.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Ms. Lurline Medhurst II</td>
                                        <td><a href="pages-mailbox_message.html">Quod minus et in vero.</a></td>
                                        <td>Fri 06.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Lewis Goodwin I</td>
                                        <td><a href="pages-mailbox_message.html">Id consequatur eos esse ipsam non et quia.</a></td>
                                        <td>Thu 05.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Breanna Vandervort</td>
                                        <td><a href="pages-mailbox_message.html">Hic itaque recusandae similique officiis corrupti vel.</a></td>
                                        <td>Wed 04.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Miss Frederique Witting</td>
                                        <td><a href="pages-mailbox_message.html">Velit soluta vel quo veritatis enim.</a></td>
                                        <td>Tue 03.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mrs. Opal Dickinson V</td>
                                        <td><a href="pages-mailbox_message.html">Sit aspernatur magni sunt.</a></td>
                                        <td>Mon 02.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Miss Roberta Waters PhD</td>
                                        <td><a href="pages-mailbox_message.html">Consectetur sapiente quo quod laudantium.</a></td>
                                        <td>Sun 01.11.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mrs. Delia Pollich DDS</td>
                                        <td><a href="pages-mailbox_message.html">Vel temporibus quis vel qui voluptatum.</a></td>
                                        <td>Sat 31.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Hugh Hahn</td>
                                        <td><a href="pages-mailbox_message.html">Qui distinctio id quia qui est.</a></td>
                                        <td>Fri 30.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Jeffrey Robel</td>
                                        <td><a href="pages-mailbox_message.html">Nihil vitae atque vitae pariatur voluptatem.</a></td>
                                        <td>Thu 29.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Jerry Durgan</td>
                                        <td><a href="pages-mailbox_message.html">Natus est non facere repellendus voluptate adipisci.</a></td>
                                        <td>Wed 28.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Lacey Wiegand</td>
                                        <td><a href="pages-mailbox_message.html">Delectus voluptas quia eum qui temporibus veritatis voluptate.</a></td>
                                        <td>Tue 27.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Jeramy Strosin</td>
                                        <td><a href="pages-mailbox_message.html">Quibusdam veniam vitae soluta omnis non qui.</a></td>
                                        <td>Mon 26.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Lottie White</td>
                                        <td><a href="pages-mailbox_message.html">Aut doloribus impedit facilis architecto totam.</a></td>
                                        <td>Sun 25.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Jeffry Stanton V</td>
                                        <td><a href="pages-mailbox_message.html">Quisquam et consequatur qui deserunt.</a></td>
                                        <td>Sat 24.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Gordon Zieme</td>
                                        <td><a href="pages-mailbox_message.html">Qui deserunt et unde enim qui.</a></td>
                                        <td>Fri 23.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Arno Kulas</td>
                                        <td><a href="pages-mailbox_message.html">Aut quas quibusdam sunt exercitationem.</a></td>
                                        <td>Thu 22.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Ms. Elsie Steuber</td>
                                        <td><a href="pages-mailbox_message.html">Quis est enim accusantium est sunt dicta laborum non.</a></td>
                                        <td>Wed 21.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Minnie Hessel</td>
                                        <td><a href="pages-mailbox_message.html">Est dolores sapiente sit iure id incidunt sunt.</a></td>
                                        <td>Tue 20.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Oma Bahringer</td>
                                        <td><a href="pages-mailbox_message.html">Aut facere at commodi tenetur ad.</a></td>
                                        <td>Mon 19.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Felicity Klein</td>
                                        <td><a href="pages-mailbox_message.html">Recusandae perspiciatis dolore eum dicta ea labore quas.</a></td>
                                        <td>Sun 18.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Nina Spencer</td>
                                        <td><a href="pages-mailbox_message.html">Sapiente sapiente omnis quos.</a></td>
                                        <td>Sat 17.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Elwin Wyman</td>
                                        <td><a href="pages-mailbox_message.html">Nihil nobis porro reiciendis consequuntur sed facere recusandae.</a></td>
                                        <td>Fri 16.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Zachary Roob PhD</td>
                                        <td><a href="pages-mailbox_message.html">Alias nostrum similique reiciendis ut.</a></td>
                                        <td>Thu 15.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Bernhard Vandervort</td>
                                        <td><a href="pages-mailbox_message.html">Facere est repellendus dolorem distinctio vel quaerat et omnis.</a></td>
                                        <td>Wed 14.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Alek Koepp</td>
                                        <td><a href="pages-mailbox_message.html">Molestiae rerum voluptates nobis.</a></td>
                                        <td>Tue 13.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Lindsey Gleason I</td>
                                        <td><a href="pages-mailbox_message.html">Labore ipsum et cupiditate a eaque.</a></td>
                                        <td>Mon 12.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Dr. Ciara Kiehn</td>
                                        <td><a href="pages-mailbox_message.html">Soluta commodi voluptatem et quia optio.</a></td>
                                        <td>Sun 11.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Beth Steuber</td>
                                        <td><a href="pages-mailbox_message.html">Placeat eveniet odio consequatur vero aut et veritatis ipsam.</a></td>
                                        <td>Sat 10.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Enos Hegmann</td>
                                        <td><a href="pages-mailbox_message.html">Deserunt culpa animi voluptatem ut quas.</a></td>
                                        <td>Fri 09.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mrs. Petra Mann Sr.</td>
                                        <td><a href="pages-mailbox_message.html">Rerum hic recusandae occaecati ea veniam.</a></td>
                                        <td>Thu 08.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Elenor Wuckert</td>
                                        <td><a href="pages-mailbox_message.html">Dignissimos ut dignissimos accusantium ipsum ipsa.</a></td>
                                        <td>Wed 07.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Helen Wyman PhD</td>
                                        <td><a href="pages-mailbox_message.html">Dolorem reiciendis dolores eos est in.</a></td>
                                        <td>Tue 06.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Pauline Tremblay</td>
                                        <td><a href="pages-mailbox_message.html">A ipsa qui cumque corrupti a aperiam.</a></td>
                                        <td>Mon 05.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Emanuel Kutch</td>
                                        <td><a href="pages-mailbox_message.html">Ut molestiae vel magnam quo tempora.</a></td>
                                        <td>Sun 04.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Matteo Fay</td>
                                        <td><a href="pages-mailbox_message.html">Necessitatibus eos adipisci sed cumque excepturi.</a></td>
                                        <td>Sat 03.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Henry Gleichner</td>
                                        <td><a href="pages-mailbox_message.html">Laborum rerum rerum assumenda est sunt.</a></td>
                                        <td>Fri 02.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Tristian Sawayn</td>
                                        <td><a href="pages-mailbox_message.html">Rem consequatur reiciendis voluptatem qui accusamus.</a></td>
                                        <td>Thu 01.10.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Ms. Demetris Prohaska DVM</td>
                                        <td><a href="pages-mailbox_message.html">Qui aspernatur est doloremque facilis ex officia maxime ipsa.</a></td>
                                        <td>Wed 30.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Holden Hamill</td>
                                        <td><a href="pages-mailbox_message.html">Cum magnam ratione est qui amet ea rerum.</a></td>
                                        <td>Tue 29.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Reymundo Gaylord DVM</td>
                                        <td><a href="pages-mailbox_message.html">Et nam aliquid doloribus voluptatum qui ea.</a></td>
                                        <td>Mon 28.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star marked"><span class="icon_star"></span></td>
                                        <td>Nikki Stark Sr.</td>
                                        <td><a href="pages-mailbox_message.html">Velit sed cupiditate ut in sapiente quas voluptas.</a></td>
                                        <td>Sun 27.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Ms. Destany Conroy DVM</td>
                                        <td><a href="pages-mailbox_message.html">Architecto illo natus sit quas.</a></td>
                                        <td>Sat 26.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Krista Schneider</td>
                                        <td><a href="pages-mailbox_message.html">Quia expedita fugiat qui repellendus.</a></td>
                                        <td>Fri 25.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Mavis Bernhard</td>
                                        <td><a href="pages-mailbox_message.html">Repudiandae nihil praesentium praesentium et.</a></td>
                                        <td>Thu 24.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Muhammad Collins PhD</td>
                                        <td><a href="pages-mailbox_message.html">Est quod molestiae explicabo.</a></td>
                                        <td>Wed 23.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Vickie Nikolaus IV</td>
                                        <td><a href="pages-mailbox_message.html">Libero pariatur quos autem est non voluptatibus.</a></td>
                                        <td>Tue 22.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Nigel Bahringer PhD</td>
                                        <td><a href="pages-mailbox_message.html">Ad quia tempore non voluptatum.</a></td>
                                        <td>Mon 21.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Cheyenne Jones MD</td>
                                        <td><a href="pages-mailbox_message.html">Amet enim officiis voluptas ex autem doloremque.</a></td>
                                        <td>Sun 20.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Jordyn Wilderman IV</td>
                                        <td><a href="pages-mailbox_message.html">Perspiciatis et nisi aperiam labore odio.</a></td>
                                        <td>Sat 19.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Zander Schumm</td>
                                        <td><a href="pages-mailbox_message.html">Atque suscipit ab nihil reiciendis molestiae.</a></td>
                                        <td>Fri 18.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Donnell Gleason III</td>
                                        <td><a href="pages-mailbox_message.html">Facilis laudantium fugiat asperiores et minima aut quia.</a></td>
                                        <td>Thu 17.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Franco Lynch</td>
                                        <td><a href="pages-mailbox_message.html">Eligendi consequatur ipsam rerum accusantium et aut.</a></td>
                                        <td>Wed 16.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Cornell Romaguera</td>
                                        <td><a href="pages-mailbox_message.html">Unde neque dolorum illum mollitia exercitationem et modi.</a></td>
                                        <td>Tue 15.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Lindsay McLaughlin IV</td>
                                        <td><a href="pages-mailbox_message.html">Assumenda necessitatibus eum id quae rerum voluptas.</a></td>
                                        <td>Mon 14.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Gloria Schuster</td>
                                        <td><a href="pages-mailbox_message.html">Consequatur explicabo ut in.</a></td>
                                        <td>Sun 13.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Ubaldo O'Keefe Jr.</td>
                                        <td><a href="pages-mailbox_message.html">Vitae in animi eius tenetur occaecati aut.</a></td>
                                        <td>Sat 12.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Dr. Lonny Heathcote</td>
                                        <td><a href="pages-mailbox_message.html">Sit consectetur quo voluptatem amet architecto.</a></td>
                                        <td>Fri 11.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Isaias Schamberger</td>
                                        <td><a href="pages-mailbox_message.html">At sit ea assumenda accusamus.</a></td>
                                        <td>Thu 10.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Jerry Roberts</td>
                                        <td><a href="pages-mailbox_message.html">Eveniet sint doloremque praesentium quod omnis ullam.</a></td>
                                        <td>Wed 09.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Trace Walsh</td>
                                        <td><a href="pages-mailbox_message.html">Nihil vitae dolores consectetur autem porro.</a></td>
                                        <td>Tue 08.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Mr. Kaleigh Kshlerin</td>
                                        <td><a href="pages-mailbox_message.html">Aut ratione libero porro velit aut earum animi.</a></td>
                                        <td>Mon 07.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Carmelo Hickle</td>
                                        <td><a href="pages-mailbox_message.html">Asperiores sed ipsam qui accusantium.</a></td>
                                        <td>Sun 06.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Sonny Gibson</td>
                                        <td><a href="pages-mailbox_message.html">Minima esse quam a aliquam quam qui.</a></td>
                                        <td>Sat 05.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Noemy Larkin</td>
                                        <td><a href="pages-mailbox_message.html">Adipisci est quia blanditiis neque sint fugiat.</a></td>
                                        <td>Fri 04.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Ansley Casper</td>
                                        <td><a href="pages-mailbox_message.html">Dolorem autem tenetur occaecati asperiores.</a></td>
                                        <td>Thu 03.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Rashad Ebert DDS</td>
                                        <td><a href="pages-mailbox_message.html">Culpa impedit magnam et.</a></td>
                                        <td>Wed 02.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Kade Ondricka Jr.</td>
                                        <td><a href="pages-mailbox_message.html">Praesentium fugiat molestiae qui commodi delectus.</a></td>
                                        <td>Tue 01.09.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Rhea Turcotte DDS</td>
                                        <td><a href="pages-mailbox_message.html">Odit provident tempore enim ut qui dolores tenetur.</a></td>
                                        <td>Mon 31.08.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Elenora Nienow</td>
                                        <td><a href="pages-mailbox_message.html">Consequatur perferendis consequuntur recusandae sit excepturi.</a></td>
                                        <td>Sun 30.08.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Branson Barton</td>
                                        <td><a href="pages-mailbox_message.html">Sed deleniti ad cum corrupti dignissimos vel nulla.</a></td>
                                        <td>Sat 29.08.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Kian Buckridge</td>
                                        <td><a href="pages-mailbox_message.html">Quisquam et nemo eligendi sed dolorem et asperiores.</a></td>
                                        <td>Fri 28.08.2015</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><div><input type="checkbox" class="msgSelect"></div></td>
                                        <td class="mbox_star"><span class="icon_star_alt"></span></td>
                                        <td>Prof. Ramiro Rippin</td>
                                        <td><a href="pages-mailbox_message.html">Ipsum in necessitatibus natus et ipsum animi qui et.</a></td>
                                        <td>Thu 27.08.2015</td>
                                    </tr>
                                </tbody>
                                <tfoot class="hide-if-no-paging">
                                    <tr>
                                        <td colspan="6">
                                            <ul class="pagination pagination-sm"></ul>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- main menu -->
            <nav id="main_menu">
                <div class="menu_wrapper">
                    <ul>
                        <li class="first_level">
                            <a href="admin.jsp">
                                <span class="icon_house_alt first_level_icon"></span>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="icon_document_alt first_level_icon"></span>
                                <span class="menu-title">Forms</span>
                            </a>
                            <ul>
                                <li class="submenu-title">Forms</li>
                                <li><a href="forms-regular_elements.html">Regular Elements</a></li>
                                <li><a href="forms-extended_elements.html">Extended Elements</a></li>
                                <li><a href="forms-gridforms.html">Gridforms</a></li>
                                <li><a href="forms-validation.html">Validation</a></li>
                                <li><a href="forms-wizard.html">Wizard</a></li>
                            </ul>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="icon_folder-alt first_level_icon"></span>
                                <span class="menu-title">Pages</span>
                                <span class="label label-danger">12</span>
                            </a>
                            <ul>
                                <li class="submenu-title">Pages</li>
                                <li><a href="pages-chat.html">Chat</a></li>
                                <li><a href="pages-contact_list.html">Contact List</a></li>
                                <li><a href="error.jsp">Error 404</a></li>
                                <li><a href="faq.jsp">Help/Faq</a></li>
                                <li><a href="invoices.jsp">Invoices</a></li>
                                <li><a href="login_page.jsp">Login Page</a></li>
                                <li><a href="login_page2.jsp">Login Page 2</a></li>
                                <li><a class="act_nav" href="mailbox.jsp">Mailbox</a></li>
                                <li><a href="mailbox_compose.jsp">Mailbox (compose)</a></li>
                                <li><a href="mailbox_details.jsp">Mailbox (details)</a></li>
                                <li><a href="pages-search_page.html">Search Page</a></li>
                                <li><a href="pages-user_list.html">User List</a></li>
                                <li><a href="pages-user_profile.html">User Profile</a></li>
                                <li><a href="pages-user_profile2.html">User Profile 2</a></li>
                            </ul>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="icon_puzzle first_level_icon"></span>
                                <span class="menu-title">Components</span>
                            </a>
                            <ul>
                                <li class="submenu-title">Components</li>
                                <li><a href="components-bootstrap.html">Bootstrap</a></li>
                                <li><a href="components-gallery.html">Gallery</a></li>
                                <li><a href="components-grid.html">Grid</a></li>
                                <li><a href="components-icons.html">Icons</a></li>
                                <li><a href="components-notifications_popups.html">Notifications/Popups</a></li>
                                <li><a href="components-typography.html">Typography</a></li>
                            </ul>
                        </li>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="icon_lightbulb_alt first_level_icon"></span>
                                <span class="menu-title">Plugins</span>
                                <span class="label label-danger">6</span>
                            </a>
                            <ul>
                                <li class="submenu-title">Plugins</li>
                                <li><a href="plugins-ace_editor.html">Ace Editor</a></li>
                                <li><a href="plugins-calendar.html">Calendar</a></li>
                                <li><a href="plugins-charts.html">Charts</a></li>
                                <li><a href="plugins-gantt_chart.html">Gantt Chart</a></li>
                                <li><a href="plugins-google_maps.html">Google Maps</a></li>
                                <li><a href="plugins-tables_footable.html">Tables</a></li>
                                <li><a href="plugins-vector_maps.html">Vector Maps</a></li>
                            </ul>
                        </li>
                        <li class="first_level has_submenu">
                            <a href="javascript:void(0)">
                                <span class="first_level_icon icon_menu-circle_alt2"></span>
                                <span class="menu-title">Sub menu</span>
                            </a>
                            <ul>
                                <li class="submenu-title">Sub menu</li>
                                <li><a href="javascript:void(0)">01. Lorem ipsum</a></li>
                                <li class="has_submenu">
                                    <a href="javascript:void(0)">02. Lorem ipsum</a>
                                    <ul>
                                        <li class="has_submenu">
                                            <a href="javascript:void(0)">02.1 Lorem ipsum dolor sit amet</a>
                                            <ul>
                                                <li><a href="javascript:void(0)">02.1.1 Lorem ipsum</a></li>
                                                <li><a href="javascript:void(0)">02.1.2 Lorem ipsum</a></li>
                                                <li><a href="javascript:void(0)">02.1.3 Lorem ipsum</a></li>
                                                <li><a href="javascript:void(0)">02.1.4 Lorem ipsum</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="javascript:void(0)">02.2 Lorem ipsum</a></li>
                                        <li><a href="javascript:void(0)">02.3 Lorem ipsum</a></li>
                                        <li><a href="javascript:void(0)">02.4 Lorem ipsum</a></li>
                                    </ul>
                                </li>
                                <li class="has_submenu">
                                    <a href="javascript:void(0)">03. Lorem ipsum</a>
                                    <ul>
                                        <li><a href="javascript:void(0)">03.1 Lorem ipsum</a></li>
                                        <li><a href="javascript:void(0)">03.2 Lorem ipsum</a></li>
                                        <li><a href="javascript:void(0)">03.3 Lorem ipsum</a></li>
                                        <li><a href="javascript:void(0)">03.4 Lorem ipsum</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0)">04. Lorem ipsum</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="menu_toggle">
                    <span class="icon_menu_toggle">
                        <i class="arrow_carrot-2left toggle_left"></i>
                        <i class="arrow_carrot-2right toggle_right" style="display:none"></i>
                    </span>
                </div>
            </nav>

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

            <!-- footable -->
            <script src="js/footable.min.js"></script>
            <script src="js/footable.paginate.min.js"></script>
            <script src="js/footable.filter.min.js"></script>

            <script>
                $(function() {
                    // footable
                    yukon_footable.p_pages_mailbox();

                    yukon_mailbox.init();
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
