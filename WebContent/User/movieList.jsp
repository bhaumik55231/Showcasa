<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html">
<% 
	String flag = (String) request.getParameter("flag");
	int page_movielist = Integer.parseInt(request.getParameter("page_movielist"));
%>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Movie list</title>
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
        <!-- jQuery UI -->
        <link href="css/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/jquery.selectbox.css" rel="stylesheet" />
    
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
<c:choose>
	<c:when test="${ empty sessionScope.task_done}">
		<%response.sendRedirect("../addMovieController?flag=load1&page_movielist="+page_movielist);%> 
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
        <br>
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">Movies</h2>
                
                <!-- <div class="select-area">
                    <form class="select" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>London</option>
                            <option value="2">New York</option>
                            <option value="3">Paris</option>
                            <option value="4">Berlin</option>
                            <option value="5">Moscow</option>
                            <option value="3">Minsk</option>
                            <option value="4">Warsawa</option>
                            <option value="5">Kiev</option>
                        </select>
                    </form>

                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                      <input type="text" id="datepicker" value='03/10/2014' class="datepicker__input">
                    </div>

                    <form class="select select--cinema" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>Cineworld</option>
                            <option value="2">Empire</option>
                            <option value="3">Everyman</option>
                            <option value="4">Odeon</option>
                            <option value="5">Picturehouse</option>
                        </select>
                    </form>

                    <form class="select select--film-category" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="2" selected='selected'>Children's</option>
                            <option value="3">Comedy</option>
                            <option value="4">Drama</option>
                            <option value="5">Fantasy</option>
                            <option value="6">Horror</option>
                            <option value="7">Thriller</option>
                        </select>
                    </form>

                </div>
 -->
                 <div class="tags-area">
                    <div class="tags tags--unmarked">
                        <span class="tags__label">Sorted by:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter='all'>all</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='release'>release date</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='popularity'>popularity</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='comments'>comments</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='ending'>ending soon</a></li>
                            </ul>
                    </div>
                </div>
                
                <!-- Movie preview item -->
  <c:forEach items="${sessionScope.edit_movie }" var="x">
                <div class="movie movie--preview movie--full release">
                     <div class="col-sm-4 col-md-3 col-lg-3">
                            <div class="movie__images">
                                <img alt='' src="..//doc//${x.encrypted_name }">
                            </div>
                           
                           
                           
                           
                    </div>
  
                    <div class="col-sm-7 col-md-9 col-lg-9 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">${x.movie_name }</a>

                            <p class="movie__time">${x.duration} min</p>

                            
                            <p class="movie__option"><strong>Category: </strong><a href="#">${x.category }</a></p>
                            <p class="movie__option"><strong>Release date: </strong>${x.release_date }</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">${x.director }</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">${x.actor_1 }</a>,<a href="#">${x.actor_2 }</a>,<a href="#">${x.actor_3 }</a>,<a href="#">${x.actor_4 }</a>,<a href="#">${x.actor_5 }</a></p>
                            <p class="movie__option"><strong>Total Votes: </strong><a href="#">${x.number_user_rating }</a></p>
							<br>
                            <div class="movie__btns">
                          	
                                <a href="singleMovie.jsp?flag=load2&movie_id=${x.movie_id }&enc=555" class="btn btn-md btn--warning">Trailer and Information <span class="hidden-sm">for this movie</span></a><br>
                                <a href="bookingStep1.jsp?flag=booking1&movie_id=${x.movie_id}&date=${sessionScope.today_date_d}&month=${sessionScope.today_date_m}&year=${sessionScope.today_date_y}&enc=888"  class="btn btn-md btn--default">Book Tickets</a>
<br><br>
                                  
                <%-- <div class="choose-container choose-container--short">
                    	<form id="form02" action="<%=request.getContextPath() %>/paymentController" method="get">	
                          <select name="select_date" id="select-sort" class="select__sort">
                            <option value="1" selected='selected'>Today</option>
                            <option value="2"><%=session.getAttribute("tomorrow_date") %></option>
                        </select>
                        <input type="hidden" name="flag" value="booking1">
                        onclick="document.getElementById('form02').submit();"
                       
                        </form>
                    
                </div>
 --%>                            </div>

                           
                    </div>

                    <div class="clearfix"></div>
                    
                    
                </div>
                <!-- end movie preview item -->
</c:forEach>
                <!-- Movie preview item -->
                
                  <script type="text/javascript">
           var months = ['January','February','March','April','May','June','July',
'August','September','October','November','December'];       
var tomorrow = new Date();
tomorrow.setTime(tomorrow.getTime() + (1000*3600*24));       
document.getElementById("spanDate").innerHTML = months[tomorrow.getMonth()] + " " + tomorrow.getDate()+ ", " + tomorrow.getFullYear() ;
    </script>                  
                                                                    <!-- end movie preview item -->

                <!-- Movie preview item -->
                
                <!-- end movie preview item -->
                <div class="coloum-wrapper">
                    <div class="pagination paginatioon--full">
                            <a href='#' class="pagination__prev">prev</a>
                            <a href='#' class="pagination__next">next</a>
                    </div>
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
                    <form id="login-form" class="login" method='get' >
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

        <!-- Stars rate -->
        <script src="js/jquery.raty.js"></script>

        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MovieList();
            });
		</script>
</c:otherwise>
</c:choose>
</body>
</html>
