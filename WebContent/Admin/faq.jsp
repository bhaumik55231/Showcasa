<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta charset="UTF-8">
		<title>Showcasa Admin(pages-help_faq)</title>
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
                    <li><span>Help/Faq</span></li>
		        </ul>
            </nav>

            <!-- main content -->
            <div id="main_wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                            <h1 class="page_heading">
                                Help/Faq
                                <span>Get Help. Find Answers</span>
                            </h1>
                        </div>
                        <div class="col-md-9 hidden-print">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="What would you like to know?">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button"><span class="icon_search"></span></button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-3 hidden-print">
                            <div class="heading_b"><span class="heading_text">Categories</span></div>
                            <div class="list-group">
                                <a href="javascript:void(0)" class="active list-group-item">All</a>
                                <a href="javascript:void(0)" class="list-group-item">Customer Service</a>
                                <a href="javascript:void(0)" class="list-group-item">Configuration & Data Management</a>
                                <a href="javascript:void(0)" class="list-group-item">Mobile</a>
                                <a href="javascript:void(0)" class="list-group-item">Reports & Dashboards</a>
                                <a href="javascript:void(0)" class="list-group-item">Sales & Marketing</a>
                            </div>
                        </div>
                        <div class="col-md-9 col-sep-md">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_1">
                                                1. Provident quisquam et rerum.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Sint consequatur eius velit eligendi at et at perferendis culpa mollitia magni qui velit dolorem et ut dicta provident omnis eum necessitatibus voluptatum inventore repellendus a et inventore sit ex ipsum repudiandae nemo illum quod deserunt facilis quia harum similique ullam.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_2">
                                                2. Omnis neque dolore.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_2" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Voluptatibus voluptas porro molestiae nesciunt quaerat voluptatem vel delectus magni fugiat nulla quam dolores quis sed aperiam et amet nemo magni voluptas rem necessitatibus ut hic aliquid perferendis debitis corporis eum soluta quae alias dolorem iure saepe dolor modi commodi suscipit error est consectetur sit voluptatem asperiores.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_3">
                                                3. Adipisci ut dolorem.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_3" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Numquam rerum esse sit et et cum non excepturi ad facilis sint assumenda sint veritatis accusamus vel quia incidunt voluptatum quam ut quia itaque molestiae dolorem inventore illum iusto at voluptatem voluptas et error incidunt blanditiis laboriosam aliquid architecto ut atque velit.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_4">
                                                4. Voluptates laudantium consectetur aliquid.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_4" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Quis ipsum at quis et eaque quibusdam consequatur sunt laudantium enim saepe et voluptas tempore odit et porro omnis nobis quia similique doloremque autem minima deleniti neque porro quia aliquam aliquam et commodi aut autem.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_5">
                                                5. Aperiam sequi aut accusantium.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_5" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Aperiam et dolorem natus labore eius voluptate culpa nesciunt et rerum repellendus et voluptatum omnis sapiente quo est fugiat veniam magnam ex minima perferendis voluptates ut fugiat voluptas est voluptas sint tempore repellat.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_6">
                                                6. Veniam rem illo commodi suscipit veniam.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_6" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Alias soluta praesentium enim quaerat maiores laboriosam minima vitae sed et officiis optio corporis qui hic repudiandae impedit eveniet eos ut quia alias possimus et et est qui quo odit animi molestiae deleniti aut.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_7">
                                                7. Fugiat illo sit.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_7" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Sint facilis dolorem cupiditate excepturi ut eum sed dolorum ipsam vitae neque temporibus doloribus consequatur quisquam suscipit sunt voluptatem voluptates possimus ut aut ut sit ab illo cupiditate voluptatem voluptas aliquam amet deserunt rerum tenetur ea.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_8">
                                                8. Ab fugiat autem enim qui.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_8" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Nemo qui eveniet iste esse consequatur fuga fugiat velit reprehenderit necessitatibus temporibus excepturi tempora necessitatibus nam debitis molestias veniam vitae quae doloremque quo voluptatum non.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_9">
                                                9. Cum quis quaerat velit eos hic.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_9" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Ipsam numquam incidunt similique nemo voluptatibus numquam quis ducimus consequatur aut non minima repellat qui amet beatae dolore est vero quos et placeat sit voluptate officiis et atque autem aut error.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_10">
                                                10. Numquam dolores et.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_10" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Esse quia natus vitae consequatur eum illum quibusdam est dolorum vel voluptatem libero sed minus consectetur voluptas commodi necessitatibus et eos architecto cupiditate qui aut sed fuga ab repellendus quia corrupti.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_11">
                                                11. Rem enim accusamus.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_11" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Quidem saepe vitae iusto nam perspiciatis voluptates nobis facilis assumenda illo culpa dolor ipsa minima asperiores debitis sed quas culpa possimus et dolore ut aspernatur ut fugiat quia sunt itaque officiis.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_12">
                                                12. Veniam deleniti tempora a sint.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_12" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Et accusantium error nam unde repellendus aut expedita occaecati sit qui expedita voluptas est id blanditiis omnis enim doloremque qui nihil nemo et eaque consectetur soluta nulla qui dolor sit voluptatibus pariatur ea fuga modi dolores repellendus quo non voluptas qui autem.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_13">
                                                13. Omnis voluptatem ipsam.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_13" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Commodi molestiae maiores magnam ratione accusamus ea aut facere ut quo facilis voluptas esse voluptate iure dignissimos libero ex rem nobis aut enim adipisci blanditiis assumenda mollitia harum dolor id a.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_14">
                                                14. Sit vel illum.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_14" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Voluptatum quos rerum non inventore aut neque perferendis doloremque non iure doloribus id animi quo eius qui porro in nihil quos minima fugit temporibus eligendi alias sint cupiditate nobis non laborum voluptatem animi quam.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_15">
                                                15. Consequatur accusamus at ipsa voluptas doloremque.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_15" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Rerum et qui eos qui eos sit molestias temporibus qui sit in vitae non voluptatem quidem eum tempore molestias optio omnis consequatur optio iste beatae voluptatem eos iure provident et illo molestias et beatae est pariatur in repudiandae libero aperiam omnis voluptas velit modi rerum nobis quia facilis voluptate eum voluptas est reiciendis tenetur eveniet.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_16">
                                                16. Nihil vel amet illo dolore.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_16" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Unde et distinctio doloribus nisi possimus voluptatem et aliquam dolor quasi itaque rem at pariatur sed provident sit quia cumque aperiam ab veritatis et aut recusandae alias earum itaque atque quia aut qui magnam eum veniam qui minima omnis incidunt ut eos provident nam et ad autem non nemo nesciunt aut eum sunt voluptate maxime.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_17">
                                                17. Odio sint vitae.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_17" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Ut sint assumenda ut consequatur expedita illo pariatur illum et in quis voluptas reprehenderit dolores perferendis deserunt ut dolores quas vitae quia vero consequatur tenetur.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_18">
                                                18. Excepturi magni repellendus quia tempore.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_18" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Et inventore odio ex tempore omnis doloremque commodi quam est quibusdam eum et labore explicabo ullam corporis molestiae quia autem sint est autem non delectus asperiores adipisci deserunt nisi consequatur modi facilis quia reprehenderit placeat rerum pariatur enim veritatis.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_19">
                                                19. Doloremque laboriosam molestias ipsum sint.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_19" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Enim eveniet sunt et est occaecati velit sit voluptas minus et quia est optio aut quia est alias nulla eveniet a hic autem occaecati est provident nesciunt eum tenetur.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#helpFaq_sect_20">
                                                20. Quas ipsum unde distinctio.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="helpFaq_sect_20" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Mollitia molestias quam et voluptatem sit quia aspernatur nihil hic alias voluptatem modi esse nisi nihil eum aut voluptatem exercitationem a quia qui et quia rerum autem reprehenderit architecto perspiciatis doloremque sint facere nihil fuga.
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                <li><a class="act_nav" href="faq.jsp">Help/Faq</a></li>
                                <li><a href="invoices.jsp">Invoices</a></li>
                                <li><a href="login_page.jsp">Login Page</a></li>
                                <li><a href="login_page2.jsp">Login Page 2</a></li>
                                <li><a href="mailbox.jsp">Mailbox</a></li>
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
