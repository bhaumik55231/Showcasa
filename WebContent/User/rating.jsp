<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Rates</title>
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
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="page-heading">Rates</h2>

                        <div class="rates-wrapper rates--full">
                            
                            <table>
                                <colgroup class="col-width-lg">
                                <colgroup class="col-width">
                                <colgroup class="col-width-sm">
                                <colgroup class="col-width">

                                <tr class="rates rates--top">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">1. Thor: The Dark World</a></td>
                                    <td class="rates__vote">233 546 votes</td>
                                    <td class="rates__result">5.0</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                <tr class="rates rates--top">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">2. The Book Thief</a></td>
                                    <td class="rates__vote">163 546 votes</td>
                                    <td class="rates__result">5.0</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                <tr class="rates rates--top">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">3. How I Live Now</a></td>
                                    <td class="rates__vote">843 546 votes</td>
                                    <td class="rates__result">4.9</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">4. The Armstrong Lie</a></td>
                                    <td class="rates__vote">3 598 votes</td>
                                    <td class="rates__result">4.9</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">5. Ender's Game</a></td>
                                    <td class="rates__vote">14 641 votes</td>
                                    <td class="rates__result">4.8</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">6. Jackass Presents: Bad Grandpa</a></td>
                                    <td class="rates__vote">32 487 votes</td>
                                    <td class="rates__result">4.7</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">7. Last Vegas</a></td>
                                    <td class="rates__vote">2 514 votes</td>
                                    <td class="rates__result">4.7</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">8. Free Birds</a></td>
                                    <td class="rates__vote">62 841 votes</td>
                                    <td class="rates__result">4.6</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">9. Gravity</a></td>
                                    <td class="rates__vote">6 885 votes</td>
                                    <td class="rates__result">4.6</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">10. Jackass Presents: Bad Grandpa</a></td>
                                    <td class="rates__vote">7 122 votes</td>
                                    <td class="rates__result">4.6</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">11. Captain Phillips</a></td>
                                    <td class="rates__vote">10 021 votes</td>
                                    <td class="rates__result">4.4</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">12. 12 Years a Slave</a></td>
                                    <td class="rates__vote">541 votes</td>
                                    <td class="rates__result">4.4</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">13. Cloudy with a Chance of Meatballs 2</a></td>
                                    <td class="rates__vote">1 020 votes</td>
                                    <td class="rates__result">4.4</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">14. Carrie</a></td>
                                    <td class="rates__vote">840 votes</td>
                                    <td class="rates__result">4.4</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">15. The Counselor</a></td>
                                    <td class="rates__vote">14 023 votes</td>
                                    <td class="rates__result">4.3</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">16. The Best Man Holiday</a></td>
                                    <td class="rates__vote">4 250 votes</td>
                                    <td class="rates__result">4.3</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">17. The Hunger Games: Catching Fire</a></td>
                                    <td class="rates__vote">100 251 votes</td>
                                    <td class="rates__result">4.3</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">18. Delivery Man</a></td>
                                    <td class="rates__vote">84 241 votes</td>
                                    <td class="rates__result">4.1</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">19. Frozen</a></td>
                                    <td class="rates__vote">7 215 votes</td>
                                    <td class="rates__result">4.0</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                                 <tr class="rates">
                                    <td class="rates__obj"><a href="#" class="rates__obj-name">20. Oldboy</a></td>
                                    <td class="rates__vote">400 votes</td>
                                    <td class="rates__result">3.9</td>
                                    <td class="rates__stars"><div class="score"></div></td>
                                </tr>

                            </table>
                        </div>

                        <div class="pagination paginatioon--full coloum-wrapper">
                            <a href='#' class="pagination__prev">prev</a>
                            <a href='#' class="pagination__next">next</a>
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
                init_Rates();
            });
		</script>

</body>
</html>
