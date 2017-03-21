<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<% 
	String flag = (String) request.getParameter("flag");
	int movie_id = Integer.parseInt(request.getParameter("movie_id"));
	int date = Integer.parseInt(request.getParameter("date"));
	int month = Integer.parseInt(request.getParameter("month"));
	int year = Integer.parseInt(request.getParameter("year"));
	int enc = Integer.parseInt(request.getParameter("enc"));
%>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Booking step 1</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->
    <!-- jQuery UI --> 
        <link href="css/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="css/idangerous.swiper.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />
		<style>
		.disableClick
		{
		    pointer-events: none;
		}
		</style>
        <!-- Modernizr --> 
        <script src="js/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
<c:choose>
	<c:when test="${ empty sessionScope.task_done}">
		<%response.sendRedirect("../addMovieController?flag=booking1&movie_id="+movie_id+"&date="+date+"&month="+month+"&year="+year+"&enc="+enc);%> 
	</c:when>
	<c:otherwise> 
	<%session.setAttribute("task_done", null); %>
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
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="img/tickets.png">
                    <p class="order__title">Book a ticket <br><span class="order__descript">and have fun movie time</span></p>
                    <div class="order__control">
                        <a href="#" class="order__control-btn active">Purchase</a>
                       
                    </div>
                </div>
            </div>
                <div class="order-step-area">
                    <div class="order-step first--step">1. What &amp; Where &amp; When</div>
                </div>

            <%-- <h2 class="page-heading heading--outcontainer">Choosen movie : <%=session.getAttribute("select_movie") %></h2>
         --%></section>
        
        <div class="choose-film">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                  <!--First Slide-->
                 <!--  <div class="swiper-slide" data-film='The Fifth Estate'> 
                        <div class="film-images">
                            <a href="#"><img alt='' src="img/movie-sample1.jpg"></a>
                        </div>
                        <p class="choose-film__title">The Fifth Estate</p>
                  </div>
                  
                  Second Slide
                  <div class="swiper-slide" data-film='Ender’s Game'>
                        <div class="film-images">
                            <img alt='' src="img/movie-sample2.jpg">
                        </div>
                        <p class="choose-film__title">Ender’s Game</p>
                  </div>
                  
                  Third Slide
                  <div class="swiper-slide" data-film='About Time'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample3.jpg">
                        </div>
                        <p class="choose-film__title">About Time</p>
                  </div>
                  
                  Four Slide
                  <div class="swiper-slide" data-film='Last Vegas'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample4.jpg">
                        </div>
                        <p class="choose-film__title">Last Vegas</p>
                  </div>

                  Five Slide
                  <div class="swiper-slide" data-film='The Hunger Games: Cathing Fire'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample5.jpg">
                        </div>
                        <p class="choose-film__title">The Hunger Games: Cathing Fire</p>
                  </div>

                  Six Slide
                  <div class="swiper-slide" data-film='The Counselor'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample6.jpg">
                        </div>
                        <p class="choose-film__title">The Counselor</p>
                  </div>

                  Seven Slide
                  <div class="swiper-slide" data-film='Free Birds'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample7.jpg">
                        </div>
                        <p class="choose-film__title">Free Birds</p>
                  </div>

                  Eight Slide
                  <div class="swiper-slide" data-film='Thor: The Dark World'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample8.jpg">
                        </div>
                        <p class="choose-film__title">Thor: The Dark World</p>
                  </div>

                  Nine Slide
                  <div class="swiper-slide" data-film='The Book Thief'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample9.jpg">
                        </div>
                        <p class="choose-film__title">The Book Thief</p>
                  </div>

                  Ten Slide
                  <div class="swiper-slide" data-film='The Wolf of Wall Stree'> 
                        <div class="film-images">
                            <img alt='' src="img/movie-sample10.jpg">
                        </div>
                        <p class="choose-film__title">The Wolf of Wall Stree</p>
                  </div>
 -->              </div>
            </div>
        </div>

        <section class="container">
            <div class="col-sm-12">
                <%-- <div class="choose-indector choose-indector--film">
                    <strong>Choosen: <%=session.getAttribute("select_movie")%> </strong><!--<span class="choosen-area"></span>
                --> </div> --%>

                <h2 class="page-heading "> Movie: <%=session.getAttribute("select_movie") %></h2>
                
                <!--  <a href="#" class= "btn btn-md btn--warning">JJJ  khbgui kjugiubgiubgiug<br>jjiuhbuibh</a> -->
                <%=session.getAttribute("put_date_link") %>
                 <h2 class="page-heading "> Date: <%=session.getAttribute("select_date") %> (<%=session.getAttribute("day_of_week") %>)</h2>
                

                <!-- <div class="choose-container choose-container--short"> -->
                   <!--  <form id='select' class="select" method='get'>
                          <select name="select_item" id="select-sort" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>London</option>
                            <option value="2">New York</option>
                            <option value="3">Paris</option>
                            <option value="4">Berlin</option>
                            <option value="5">Moscow</option>
                            <option value="3">Minsk</option>
                            <option value="4">Warsawa</option>
                            <option value="5">Kiev</option>
                        </select>
                    </form> -->

                   
                      <%-- <p class="movie__option"><strong>Date: <%= session.getAttribute("select_date") %></strong></p>
                      --%>
                    
               <!--  </div> -->

                <h2 class="page-heading">Pick time</h2>

                <div class="time-select time-select--wide">
                	<%=session.getAttribute("put_time") %>
                </div>
                

           
                <div class="choose-indector choose-indector--time">
                    <strong>Choosen: </strong><span class="choosen-area"></span>
                </div>
               <%-- <h2 class="page-heading">Pick Different Date</h2>
				<form id="form02" action="<%=request.getContextPath() %>/addMovieController" method="get">	
				<input type="submit" value="Pick Date" class="btn btn-md btn--warning"/><br><br>
                          <select name="select_date" id="select-sort" class="select__sort">
                            <option value="1" >Today</option>
                            <option value="2" selected='selected'><%=session.getAttribute("tomorrow_date") %></option>
                        </select>
                        <input type="hidden" name="source" value="bookingStep1"/>
                        <input type="hidden" name="movie_id" value="<%=session.getAttribute("select_movie_id")%>"/>
                        <input type="hidden" name="flag" value="booking1">
                        
                       
                        </form> --%>
            </div>

        </section>

        <div class="clearfix"></div>

        <form id='film-and-time' class="booking-form" method='get' action='book2.html'>
            <input type='text' name='choosen-movie' class="choosen-movie">

            <input type='text' name='choosen-city' class="choosen-city">
            <input type='text' name='choosen-date' class="choosen-date">
            
            <input type='text' name='choosen-cinema' class="choosen-cinema">
            <input type='text' name='choosen-time' class="choosen-time">
</form>


            <div class="booking-pagination">
                    <a href="#" class="booking-pagination__prev hide--arrow">
                        <span class="arrow__text arrow--prev"></span>
                        <span class="arrow__info"></span>
                    </a>
                     
            
                    <form id="form03" action="<%=request.getContextPath() %>/ticketController" method="get">
                    <div id="put_here" ></div>
                    <input type="hidden" name="flag" value="load_seats">
                    </form>
                    <div id="link">
                    <a href="#" class="booking-pagination__next disabled">
                        <span class="arrow__text arrow--next">next step</span>
                        <span class="arrow__info">choose a sit</span>
                    </a></div>
            </div>

        
        
        <div class="clearfix"></div>
        <script>
        $('li').click(function() 
        {
            //alert($(this).data('id'));
            var show_id = $(this).data('id');
            document.getElementById("link").innerHTML = "<a href='bookingStep2.jsp?flag=load_seat&show_id="+show_id+"' class='booking-pagination__next'><span class='arrow__text arrow--next'>next step</span><span class='arrow__info'>choose a sit</span></a>";
         });
//var x = document.getElementByClassName("active").getAttribute("data-id");
  //  document.getElementById("put_here").innerHTML = '<h1>'+x+'</h1>';
    </script>
        <footer class="footer-wrapper">
            <section class="container">
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Cities</a></li>
                        <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                        <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                        <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                        <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                        <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                        <li><a href="news-left.html" class="nav-link__item">News</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Terms of use</a></li>
                        <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                        <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                        <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer-info">
                        <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                        <div class="social">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-vk"></a>
                            <a href='#' class="social__variant fa fa-instagram"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                            <a href='#' class="social__variant fa fa-pinterest"></a>
                        </div>
                        
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                    </div>
                </div>
            </section>
        </footer>
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
	<script>
	

	</script>
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/jquery.selectbox-0.2.min.js"></script>
        <!-- Swiper slider -->
        <script src="js/idangerous.swiper.min.js"></script>

        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_BookingOne();
            });
		</script>
</c:otherwise>
</c:choose>
</body>
</html>
