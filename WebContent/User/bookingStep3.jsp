<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html">

<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Booking step 3</title>
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
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />
        
		<style type="text/css">
		td
		{
			text-align: center;
		}
		th, td
		{
    		border-bottom: 1px solid #ddd;
		}
		tr:hover {background-color: #f5f5f5}
		#radio_buttons
		{
			display:none;
		}
		</style>
        <!-- Modernizr --> 
        <script src="js/modernizr.custom.js"></script>
        <script src="js/item111_copy.js"></script>
    
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
            <div class="order-container">
                <div class="order">
                    <br>
                    <img class="order__images" alt='' src="img/tickets.png">
                    
                    <p class="order__title">Book a ticket <br><span class="order__descript">and have fun movie time</span></p>
                    <div class="order__control">
                        <a href="" class="order__control-btn active">Purchase</a>
                       
                    </div>
                </div>
            </div>
                <div class="order-step-area">
                    <div class="order-step first--step order-step--disable ">1. What &amp; Where &amp; When</div>
                    <div class="order-step second--step order-step--disable">2. Choose a sit</div>
                    <div class="order-step third--step">3. Check out</div>
                </div>

            <div class="col-sm-12">
                <div class="checkout-wrapper">
                    <h2 class="page-heading">price</h2>
                    <ul class="book-result">
                        <li class="book-result__item">Tickets: <span class="book-result__count booking-ticket"><%=session.getAttribute("total_ticket") %></span></li>
                        <!-- <li class="book-result__item">One item price: <span class="book-result__count booking-price">$20</span></li>
                         --><li class="book-result__item">Total: <span class="book-result__count booking-cost">Rs: <%=session.getAttribute("total_cost") %></span></li>
                    </ul>
					
                    <!-- <h2 class="page-heading">Choose payment method</h2>
                    <div class="payment">
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay1.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay2.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay3.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay4.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay5.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay6.png">
                        </a>
                        <a href="#" class="payment__item">
                            <img alt='' src="img/pay7.png">
                        </a>
                        
                    </div> -->
                    <h2 class="page-heading">Food &amp; beverages Booking</h2>
                   
					<%=session.getAttribute("put_item_thubmnail") %>
  					<%=session.getAttribute("put_item_table") %>
                    
					<h3 class="page-heading"><span class="book-result__count booking-cost" id="total_val_tab">Item Total: Rs: 0</span></h3>
                    <h3 id="grand_total_bla" class="page-heading">Grand Total: Rs: <span id="grand_total"><%=session.getAttribute("total_cost") %></span></h3>
				    <%=session.getAttribute("put_form") %>
                </div>
                
                
			
            </div>

        </section>
        

        <div class="clearfix"></div>

        <div class="booking-pagination">
                <a href="bookingStep2.jsp?flag=load_seat&show_id=<%=session.getAttribute("show_id") %>" class="booking-pagination__prev">
                    <p class="arrow__text arrow--prev">prev step</p>
                    <span class="arrow__info">choose a sit</span>
                </a>
                <a href="#" class="booking-pagination__next hide--arrow">
                    <p class="arrow__text arrow--next">next step</p>
                    <span class="arrow__info"></span>
                </a>
        </div>
        
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
                init_BookingStep3();
              });
		    </script>

</body>
</html>
