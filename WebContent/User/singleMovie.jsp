<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<% 
	String flag = (String) request.getParameter("flag");
	int movie_id = Integer.parseInt(request.getParameter("movie_id"));
	int enc= Integer.parseInt(request.getParameter("enc"));
%>
<html> 
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Movie page</title>
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
        <!-- Swiper slider -->
        <link href="css/idangerous.swiper.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="css/magnific-popup.css" rel="stylesheet" />

    	<link href="css/rating.css" rel="stylesheet">
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
		<%response.sendRedirect("../addMovieController?flag="+flag+"&movie_id="+movie_id+"&enc="+enc);%> 
	</c:when>
	<c:otherwise>
	<c:choose>
	<c:when test="${not empty sessionScope.task_enc}">
	<!-- BODY -->	
	<%session.setAttribute("task_done", null); %>
	<%session.setAttribute("task_enc", null); %>
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
                <div class="movie">
        <c:forEach items="${sessionScope.edit_movie1 }" var="x">
                    <h2 class="page-heading">${x.movie_name }</h2>
                    
                    <div class="movie__info">
                        <div class="col-sm-4 col-md-3 movie-mobile">
                            <div class="movie__images">
                                 <span class="movie__rating" id="one">${x.rating }</span>
                                <img alt='' src="..//doc//${x.encrypted_name }">
                            </div>
                            <!-- <div class="movie__rate">Your vote: 
                            <div id='score' class="score"></div>
                            </div> -->
                        </div>

                        <div class="col-sm-8 col-md-9">
                            <p class="movie__time">${x.duration } min</p>

                            
                            
                            <p class="movie__option"><strong>Category: </strong><a href="#">${x.category }</a></p>
                            <p class="movie__option"><strong>Release date: </strong>${x.release_date }</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">${x.director }</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">${x.actor_1 }</a>,<a href="#">${x.actor_2 }</a>,<a href="#">${x.actor_3 }</a>,<a href="#">${x.actor_4 }</a>,<a href="#">${x.actor_5 }</a></p>
                            <p class="movie__option"><strong>Total Votes: </strong><a href="#">${x.number_user_rating }</a></p>
                            <p class="movie__option"><strong>Average Rating: </strong><span id="three">${x.rating }</span></p>
                            <c:choose>
                            <c:when test="${(not empty sessionScope.user_id) and (not empty sessionScope.user_rating)}">
                            	<div id="two"><p class="movie__option"><strong>Your Rating: <%=session.getAttribute("rating_value") %></strong></p></div>
                            </c:when>
  							<c:otherwise >
  								<c:choose>
  								<c:when test="${(not empty sessionScope.user_id) and (empty sessionScope.user_rating)}">
                            		<div id="two"><p class="movie__option"><strong>Your Rating: </strong></p>
                            
                           			 <form>
                            			<fieldset class="rating" name="star">
							    			<input type="radio" id="star5" name="${x.movie_id }" value="5" onclick="getRating(this.value,this.name)"/><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    			<input type="radio" id="star4half" name="${x.movie_id }" value="4.5" onclick="getRating(this.value,this.name)"/><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
							    			<input type="radio" id="star4" name="${x.movie_id }" value="4" onclick="getRating(this.value,this.name)"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    			<input type="radio" id="star3half" name="${x.movie_id }" value="3.5" onclick="getRating(this.value,this.name)"/><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
							    			<input type="radio" id="star3" name="${x.movie_id }" value="3" onclick="getRating(this.value,this.name)"/><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    			<input type="radio" id="star2half" name="${x.movie_id }" value="2.5" onclick="getRating(this.value,this.name)"/><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
							    			<input type="radio" id="star2" name="${x.movie_id }" value="2" onclick="getRating(this.value,this.name)"/><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    			<input type="radio" id="star1half" name="${x.movie_id }" value="1.5" onclick="getRating(this.value,this.name)"/><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
							    			<input type="radio" id="star1" name="${x.movie_id }" value="1" onclick="getRating(this.value,this.name)"/><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							    			<input type="radio" id="starhalf" name="${x.movie_id }" value="0.5" onclick="getRating(this.value,this.name)"/><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
										</fieldset>
									</form>
									
									</div>
									</c:when>
								</c:choose>	
							</c:otherwise>
							</c:choose>
							<br>
                            <!-- <a href="#" class="comment-link">Comments:  15</a> -->

                            <div class="movie__btns movie__btns--full">
                                <a href="bookingStep1.jsp?flag=booking1&movie_id=${x.movie_id}&date=${sessionScope.today_date_d}&month=${sessionScope.today_date_m}&year=${sessionScope.today_date_y}&enc=888" class="btn btn-md btn--warning">book tickets!</a>
                                
                            </div>
							
                           <!--  <div class="share">
                                <span class="share__marker">Share: </span>
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                     
                    
                    
                    
                    
                    
                    <h2 class="page-heading">The plot</h2>

                    <p class="movie__describe">${x.plot }</p>

                    <h2 class="page-heading">photos &amp; videos</h2>
                    
                    <div class="movie__media">
                        <div class="movie__media-switch">
                            <a href="#" class="watchlist list--photo" data-filter='media-photo'>0 photos</a>
                            <a href="#" class="watchlist list--video" data-filter='media-video'>1 videos</a>
                        </div>

                        <div class="swiper-container">
                          <div class="swiper-wrapper">
                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                               <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div><div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                               <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                              <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                               <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div><div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                               <div class="swiper-slide media-video">
                                <a href='${x.youtube_link }' class="movie__media-item ">
                                     <img alt='' src="img/movie-video1.jpg">
                                </a>
                              </div>
                           </div>
                         </div>
                     </div>
 </c:forEach>             
                 
                              <!--Second Slide-->
                              
                              <!--Third Slide-->
                              
                              <!--Four Slide-->
                              
                              <!--Slide-->
                              
                              <!--Slide-->
                              
                              <!--First Slide-->
                              
                              <!--Second Slide-->
                              
                              <!--Slide-->
                              
                              <!--Slide-->
                          
                          </div>
                        </div>

                   
                    <div class="clearfix"></div>

                  	
                    <!-- hiden maps with multiple locator-->
                   <!--  <div  class="map">
                        <div id='cimenas-map'></div> 
                    </div> -->
					<%
						String placeholder = "";
						if(session.getAttribute("disabled")!=null)
						{
							placeholder = "Signup / Login to";
						}
						
					%>
                   <h2 class="page-heading">Review (<%=session.getAttribute("total_review") %>)</h2>
	
                    <div class="comment-wrapper">
                        <form id="comment-form" class="comment-form" method='post' action="<%=request.getContextPath()%>/reviewMovieController?flag=add_review">
                            <textarea <%=session.getAttribute("disabled") %>name='review_movie' class="comment-form__text" placeholder=' Add you review here'></textarea>
                            <label class="comment-form__info">250 characters limit</label>
                            <button type='submit' class="btn btn-md btn--danger comment-form__btn" <%=session.getAttribute("disabled") %>>add Review</button>
                        </form>
						<c:forEach items="${sessionScope.list_review }" var="y" varStatus="j">
                        <div class="comment-sets">
						<div class="comment">
                            <div class="comment__images">
                                <img alt='title' src="imag/avatar.jpg">
                            </div>
							<a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>${y.first_name } ${y.last_name }</a>
                            <p class="comment__date">${y.timestamp }</p>
                            <p class="comment__message">${y.review_description }</p>
                            <!-- <a href='#' class="comment__reply">Reply</a> -->
                        </div>
						</div>
						</c:forEach>
					 </div>
					<%session.setAttribute("disabled", null); %>
       
       </section>
        <div class="clearfix"></div>

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
    
    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get'>
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
</div>

	<!-- end of wrapper -->

	<!-- JavaScript-->
	
	<script>
	function getRating(str,name)
	{
	  var xhttp;    
	  xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() 
	  {
	    if (xhttp.readyState == 4 && xhttp.status == 200)
	    {
	      document.getElementById("one").innerHTML = xhttp.responseText;
	      document.getElementById("three").innerHTML = xhttp.responseText;
	      //document.getElementById("two").innerHTML = "Thanks for your vote!! You voted"+str+"/5";
	      document.getElementById("two").innerHTML = "<p class='movie__option'><strong>Your Rating: "+str+"</strong></p>";
	    }
	  };
	  xhttp.open("GET", "${pageContext.request.contextPath}/revenueController?&flag=ajax&value="+str+"&movie_id="+name, true);
	  xhttp.send();
	}
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

        <!-- Stars rate -->
        <script src="js/jquery.raty.js"></script>
        <!-- Swiper slider -->
        <script src="js/idangerous.swiper.min.js"></script>
        <!-- Magnific-popup -->
        <script src="js/jquery.magnific-popup.min.js"></script> 

        <!--*** Google map  ***-->
       <!--  <script src="https://maps.google.com/maps/api/js?sensor=true"></script> 
        *** Google map infobox  ***
        <script src="js/infobox.js"></script> 
 -->
         <!-- Share buttons -->
       <!-- <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="js/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>
 -->
        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MoviePage();
                 init_MoviePageFull();
            });
		</script>

</c:when>
<c:otherwise>
	<%session.setAttribute("task_done", null); %>
	<%response.sendRedirect("errorPage1.jsp");%>
</c:otherwise>
</c:choose>
</c:otherwise>
</c:choose>

</body>
</html>
