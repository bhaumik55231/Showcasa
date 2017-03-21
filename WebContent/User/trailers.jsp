<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Trailers</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/jquery.selectbox.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="css/magnific-popup.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="js/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
        <!-- Banner -->
     
        <!-- Header section -->
        <%
       String a=(String)session.getAttribute("username");
       if(a!=null){%>
    	   <%@include file="header.jsp" %>   
       <%}
       else{%>
    	   <%@include file="header1.jsp" %><%
       }
       %>
        
        <!-- Search bar -->
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12"><br>
            
                <h2 class="page-heading">trailers</h2>

                <!-- <div class="tags-area wrap-select">
                    <div class="tags tags--unmarked">
                        <span class="tags__label">Sorted by:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item">name</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item item-active">popularity</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item">date</a></li>
                            </ul>
                    </div>
                </div>
 -->
                <div class="trailer-wrapper">
                    <!-- Films trailers -->
                    <c:forEach items="${sessionScope.trailers }" var="i">
                    <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">${i.movie_name }</p>
                                <p class="trailer__number">1 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='${i.youtube_link }' class="trailer-sample">
                                <img alt='' src="..//doc//${i.encrypted_name }">
                            </a>
                        </div>

                        

                       
                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        
                            
                            

                            
                            
                        </div>
</c:forEach>
                    </div>
                    <!--end films trailers-->


                    <!-- Films trailers -->
                    <!-- <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">The Book Thief</p>
                                <p class="trailer__number">4 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="img/trailer-4.jpg">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="img/trailer-5.jpg">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img  alt='' src="img/trailer-6.jpg">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img alt='' src="img/trailer-1.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
 -->
                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <!-- <div class="trailer-block trailer-block--short row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">How I Live Now</p>
                                <p class="trailer__number">2 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="img/trailer-7.jpg">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="img/trailer-8.jpg">
                            </a>
                        </div>
                    
                    </div> -->

                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <!-- <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">Ender's Game</p>
                                <p class="trailer__number">9 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="img/trailer-9.jpg">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="img/trailer-10.jpg">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img  alt='' src="img/trailer-11.jpg">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="img/trailer-1.jpg">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="img/trailer-2.jpg">
                                </a>
                            </div>

                            <div class="col-md-3 hidden-sm">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img  alt='' src="img/trailer-3.jpg">
                                </a>
                            </div>
                        </div>
                    </div> -->

                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <!-- <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">Last Vegas</p>
                                <p class="trailer__number">4 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="img/trailer-12.jpg">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="img/trailer-13.jpg">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img  alt='' src="img/trailer-14.jpg">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="img/trailer-1.jpg">
                                </a>
                            </div>
                        </div>
                    </div> -->

                    <!--end films trailers-->

                </div>

                <div class="pagination paginatioon--full">
                        <a href='#' class="pagination__prev">prev</a>
                        <a href='#' class="pagination__next">next</a>
                </div>

            </div>
        </section>
        
        <div class="clearfix"></div>

        <%@include file="footer.jsp" %>
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/jquery.selectbox-0.2.min.js"></script>
        <!-- Magnific-popup -->
        <script src="js/jquery.magnific-popup.min.js"></script>

        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script> 
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_Trailer();
            });
		</script>

</body>
</html>
