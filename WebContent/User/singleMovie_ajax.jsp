<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base href="${pageContext.request.contextPath}/User/">
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>Showcasa - Movie page</title>
<meta name="description" content="A Template by Gozha.net">
<meta name="keywords" content="HTML, CSS, JavaScript">
<meta name="author" content="Gozha.net">
<script>
    	function function_star()
    	{
    		
    		var value10=document.getElementById("star5");
    		var value9=document.getElementById("star4half");
    		var value8=document.getElementById("star4");
    		var value7=document.getElementById("star3half");
    		var value6=document.getElementById("star3");
    		var value5=document.getElementById("star2half");
    		var value4=document.getElementById("star2");
    		var value3=document.getElementById("star1half");
    		var value2=document.getElementById("star1");
    		var value1=document.getElementById("starhalf");
    		var user=document.getElementById("user1").value;
    		var movie=document.getElementById("movieid").value;
    		var movie1=document.getElementById("moviename").value;
    		xmlhttp=new XMLHttpRequest();
    		
    		
    		xmlhttp.onreadystatechange = function() {
    			if (xmlhttp.readyState == 4) 
    			{
    				alert(xmlhttp.responseText);
    				var jsonObj = JSON.parse(xmlhttp.responseText);
    				
    				for(i=0 ; i<jsonObj.length ; i++)
    				{
    					alert(jsonObj[i].rating);
    					var c=document.getElementById("rating1");
    					
    					c.innerHTML=jsonObj[i].rating;
    					
    					
    				}
    			}
    		}
    		/* removeAllStars(); */
    		if(value10.checked)
    		{
    		
    		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value10.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
    		xmlhttp.send();
    		}
    		else if(value9.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value9.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value8.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value8.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value7.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value7.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value6.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value6.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value5.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value5.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value4.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value4.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value3.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value3.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value2.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value2.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    		else if(value1.checked)
    		{
        		xmlhttp.open("get", "${pageContext.request.contextPath}/ratingController?flag=rating&value="+value1.value+"&user_id="+user+"&movie_id="+movie+"&movie_name="+movie1, true);
        		xmlhttp.send();
        		}
    	}
    	/* function removeAllStars()
    	{
    		
    		var removeState=document.rate.star.input;
    	
    		
    			document.rate.star.remove(i);
    		
    	} */
    	
    	</script>
    	
 
<script>
function showCustomer(str)
{
  var xhttp;    
  xhttp = new XMLHttpRequest();
  
  xhttp.onreadystatechange = function() 
  {
    if (xhttp.readyState == 4 && xhttp.status == 200)
    {
      document.getElementById("one").innerHTML = xhttp.responseText;
      document.getElementById("two").innerHTML = "Thanks for your vote!! You voted"+str+"/5";
      
    }
  };
  xhttp.open("GET", "${pageContext.request.contextPath}/revenueController?&flag=ajax&value="+str, true);
  xhttp.send();
}
<!-- Mobile Specific Metas-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="telephone=no" name="format-detection">

<!-- Fonts -->
<link href="css/rating.css" rel="stylesheet">
<!-- Font awesome - icon font -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Roboto -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700'
	rel='stylesheet' type='text/css'>

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
			String a = (String) session.getAttribute("username");
			if (a != null) {
		%>
		<%@include file="header.jsp"%>
		<%
			} else {
		%>
		<%@include file="header1.jsp"%>
		<%
			}
		%>

		<!-- Search bar -->

		<!-- Main content -->
		<br>
		<section class="container">
		<div class="col-sm-12">
		<div id="two"></div>
			<div class="movie">
			<div id="one">
			<form action='' method="post">
				<c:forEach items="${sessionScope.edit_movie1 }" var="x">
					
					<input type="hidden" name="movie_name" value="${x.movie_name}">
					<input type="hidden" name="user_id" value="<%=session.getAttribute("userid")%>">
					
					
					
					<h2 class="page-heading">${x.movie_name }</h2>

					<div class="movie__info">
						<div class="col-sm-4 col-md-3 movie-mobile">
							<div class="movie__images">
								<span class="movie__rating" id="rating1">5.0</span> <img alt=''
									src="..//doc//${x.encrypted_name }">
							</div>
							
						</div>

						<div class="col-sm-8 col-md-9">
						
							<p class="movie__time">${x.duration}</p>
						


							<p class="movie__option">
								<strong>Category: </strong><a href="#">${x.category }</a>
							</p>
							<p class="movie__option">
								<strong>Release date: </strong>${x.release_date }</p>
							<p class="movie__option">
								<strong>Director: </strong><a href="#">${x.director }</a>
							</p>
							<p class="movie__option">
								<strong>Actors: </strong><a href="#">${x.actor_1 }</a>,<a
									href="#">${x.actor_2 }</a>,<a href="#">${x.actor_3 }</a>,<a
									href="#">${x.actor_4 }</a>,<a href="#">${x.actor_5 }</a>
							</p>
							<p class="movie__option">
								<strong>Age restriction: </strong><a href="#">${x.age_restriction }</a>
							</p>
					<%
			String a2 = (String) session.getAttribute("username");
			if (a2 != null) {
				
		%>
								
								<input type="hidden" name="user_id" id="user1" value="<%=session.getAttribute("userid")%>"/>
								<input type="hidden" name="movie_id" id="movieid" value="${x.movie_id}"/>		
									<input type="hidden" name="movie_name" id="moviename" value="${x.movie_name}"/>
								<p class="movie__option">
								<strong>Your Rating:</strong>

								<fieldset class="rating" name="star">
							    <input type="radio" id="star5" name="rating1" value="5" onclick="function_star()"/><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    <input type="radio" id="star4half" name="rating1" value="4.5" onclick="function_star()"/><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
							    <input type="radio" id="star4" name="rating1" value="4" onclick="function_star()"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    <input type="radio" id="star3half" name="rating1" value="3.5" onclick="function_star()"/><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
							    <input type="radio" id="star3" name="rating1" value="3" onclick="function_star()"/><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    <input type="radio" id="star2half" name="rating1" value="2.5" onclick="function_star()"/><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
							    <input type="radio" id="star2" name="rating1" value="2" onclick="function_star()"/><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    <input type="radio" id="star1half" name="rating1" value="1.5" onclick="function_star()"/><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
							    <input type="radio" id="star1" name="rating1" value="1" onclick="function_star()"/><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							    <input type="radio" id="starhalf" name="rating1" value="0.5" onclick="function_star()"/><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
								
							</fieldset>
							</p>
						</div>		
									
					<%} %>			
							

							<div class="movie__btns movie__btns--full">
								<input type="submit" class="btn btn-md btn--warning" value="book
									a ticket for this movie"/>

							</div>
<br>
							<div class="share">
								<span class="share__marker">Share: </span>
								<div class="addthis_toolbox addthis_default_style ">
									<a class="addthis_button_facebook_like"
										fb:like:layout="button_count"></a> <a
										class="addthis_button_tweet"></a> <a
										class="addthis_button_google_plusone" g:plusone:size="medium"></a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					<h2 class="page-heading">The plot</h2>

					<p class="movie__describe">${x.plot }</p>

					<h2 class="page-heading">photos &amp; videos</h2>

					<div class="movie__media">
						<div class="movie__media-switch">
							<a href="#" class="watchlist list--photo"
								data-filter='media-photo'>0 photos</a> <a href="#"
								class="watchlist list--video" data-filter='media-video'>1
								videos</a>
						</div>

						<div class="swiper-container">
							<div class="swiper-wrapper">
								<!--First Slide-->
								<div class="swiper-slide media-video">
									<a href='${x.youtube_link }' class="movie__media-item "> <img
										alt='' src="..//doc//${x.encrypted_name }">
									</a>
								</div>
				</c:forEach>
				</form>
				</div>
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
	</div>



	<!-- <h2 class="page-heading">showtime &amp; tickets</h2> -->
	<!-- <div class="choose-container">
		<form id='select' class="select" method='get'>
			<select name="select_item" id="select-sort" class="select__sort"
				tabindex="0">
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
			<input type="text" id="datepicker" value='03/10/2014'
				class="datepicker__input">
		</div>

		<a href="#" id="map-switch"
			class="watchlist watchlist--map watchlist--map-full"><span
			class="show-map">Show cinemas on map</span><span class="show-time">Show
				cinema time table</span></a>

		<div class="clearfix"></div>

		<div class="time-select">
			<div class="time-select__group group--first">
				<div class="col-sm-4">
					<p class="time-select__place">Cineworld</p>
				</div>
				<ul class="col-sm-8 items-wrap">
					<li class="time-select__item" data-time='09:40'>09:40</li>
					<li class="time-select__item" data-time='13:45'>13:45</li>
					<li class="time-select__item active" data-time='15:45'>15:45</li>
					<li class="time-select__item" data-time='19:50'>19:50</li>
					<li class="time-select__item" data-time='21:50'>21:50</li>
				</ul>
			</div>

			<div class="time-select__group">
				<div class="col-sm-4">
					<p class="time-select__place">Empire</p>
				</div>
				<ul class="col-sm-8 items-wrap">
					<li class="time-select__item" data-time='10:45'>10:45</li>
					<li class="time-select__item" data-time='16:00'>16:00</li>
					<li class="time-select__item" data-time='19:00'>19:00</li>
					<li class="time-select__item" data-time='21:15'>21:15</li>
					<li class="time-select__item" data-time='23:00'>23:00</li>
				</ul>
			</div>

			<div class="time-select__group">
				<div class="col-sm-4">
					<p class="time-select__place">Curzon</p>
				</div>
				<ul class="col-sm-8 items-wrap">
					<li class="time-select__item" data-time='09:00'>09:00</li>
					<li class="time-select__item" data-time='11:00'>11:00</li>
					<li class="time-select__item" data-time='13:00'>13:00</li>
					<li class="time-select__item" data-time='15:00'>15:00</li>
					<li class="time-select__item" data-time='17:00'>17:00</li>
					<li class="time-select__item" data-time='19:0'>19:00</li>
					<li class="time-select__item" data-time='21:0'>21:00</li>
					<li class="time-select__item" data-time='23:0'>23:00</li>
					<li class="time-select__item" data-time='01:0'>01:00</li>
				</ul>
			</div>

			<div class="time-select__group">
				<div class="col-sm-4">
					<p class="time-select__place">Odeon</p>
				</div>
				<ul class="col-sm-8 items-wrap">
					<li class="time-select__item" data-time='10:45'>10:45</li>
					<li class="time-select__item" data-time='16:00'>16:00</li>
					<li class="time-select__item" data-time='19:00'>19:00</li>
					<li class="time-select__item" data-time='21:15'>21:15</li>
					<li class="time-select__item" data-time='23:00'>23:00</li>
				</ul>
			</div>

			<div class="time-select__group group--last">
				<div class="col-sm-4">
					<p class="time-select__place">Picturehouse</p>
				</div>
				<ul class="col-sm-8 items-wrap">
					<li class="time-select__item" data-time='17:45'>17:45</li>
					<li class="time-select__item" data-time='21:30'>21:30</li>
					<li class="time-select__item" data-time='02:20'>02:20</li>
				</ul>
			</div>
		</div>

		hiden maps with multiple locator
		<div class="map">
			<div id='cimenas-map'></div>
		</div>
-->
		<h2 class="page-heading">comments (15)</h2>

		<div class="comment-wrapper">
		<% 
		String a3 = (String) session.getAttribute("username");
		if (a3 != null) {
		
		
		
		
		%>
			<form id="comment-form" class="comment-form" method='post' action="<%=request.getContextPath()%>/commentController?flag=add_comment">
				
				<c:forEach items="${sessionScope.edit_movie1 }" var="x">
				<input type="hidden" name="movie_id" value="${x.movie_id }">
				<input type="hidden" name="first_name" value="<%=session.getAttribute("firstname")%>">		
				<input type="hidden" name="last_name" value="<%=session.getAttribute("lastname")%>">		
					<textarea class="comment-form__text"
					placeholder='Add you comment here' name="comment"></textarea>
				<label class="comment-form__info">250 characters only</label>
				<input type='submit'
					class="btn btn-md btn--danger comment-form__btn" value="add
					comment">
				</c:forEach>
			</form>
			<%} %>
			<div class="comment-sets">
<c:forEach items="${sessionScope.comments }" var="y">
				<div class="comment">
					<div class="comment__images">
						<img alt='' src="img/avatar.jpg">
					</div>
					
					<a href='#' class="comment__author"><span
						class="social-used fa fa-facebook"></span>${y.first_name } ${y.last_name }</a>
					<p class="comment__date">${y.timeanddate }</p>
					<p class="comment__message">${y.comment }</p>
					<!-- <a href='#' class="comment__reply">Reply</a> -->
				</div>
</c:forEach>
				

				
				

				<div id='hide-comments' class="hide-comments">
					
					
				</div>

				<div class="comment-more">
					<a href="#" class="watchlist">Show more comments</a>
				</div>

			</div>
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
			<form id="login-form" class="login" method='get' novalidate=''>
				<p class="login__title">
					sign in <br>
					<span class="login-edition">welcome to A.Movie</span>
				</p>

				<div class="social social--colored">
					<a href='#' class="social__variant fa fa-facebook"></a> <a href='#'
						class="social__variant fa fa-twitter"></a> <a href='#'
						class="social__variant fa fa-tumblr"></a>
				</div>

				<p class="login__tracker">or</p>

				<div class="field-wrap">
					<input type='email' placeholder='Email' name='user-email'
						class="login__input"> <input type='password'
						placeholder='Password' name='user-password' class="login__input">

					<input type='checkbox' id='#informed' class='login__check styled'>
					<label for='#informed' class='login__check-info'>remember
						me</label>
				</div>

				<div class="login__control">
					<button type='submit' class="btn btn-md btn--warning btn--wider">sign
						in</button>
					<a href="#" class="login__tracker form__tracker">Forgot
						password?</a>
				</div>
			</form>
		</div>

		</section>
	</div>

	<!-- JavaScript-->
	<!-- jQuery 1.9.1-->
	<script src="js/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.10.1.min.js"><\/script>')
	</script>
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
	<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<!--*** Google map infobox  ***-->
	<script src="js/infobox.js"></script>

	<!-- Share buttons -->
	<script type="text/javascript">
		var addthis_config = {
			"data_track_addressbar" : true
		};
	</script>
	<script type="text/javascript"
		src="js/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

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

</body>
</html>
