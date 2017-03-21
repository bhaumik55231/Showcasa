<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Coming soon</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="css/font-awesome.css" rel="stylesheet">
    
    <!-- Stylesheets -->
    
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
    <div class="wrapper wrapper-images">
        <div class="comming-wrapper">
         <a href='index.html' class="logo logo--lg">
            <img alt='coming-title' src="img/logo-lg.png">
            <h3 class="coming-title">coming soon</h3>
        </a> 
        <section class="container">
            <div class="couter">
                <div class="timer-wrap">
                    <div class="timer-bg"></div>
                    <span class="digits">-439</span>
                    <div style="display:inline;width:200px;height:200px;"><canvas height="200px" width="200"></canvas><input data-thickness=".11" data-height="200" data-width="200" data-displayinput="false" data-fgcolor="#ffd564" data-bgcolor="rgba(255,255,255,0.2)" data-max="342" data-min="0" class="knob day" style="display: none; width: 0px; visibility: hidden;"></div>
                    <div class="digits-label">days</div>
                </div>
                <div class="timer-wrap">
                    <div class="timer-bg"></div>
                    <span class="digits">-20</span>
                    <div style="display:inline;width:200px;height:200px;"><canvas height="200px" width="200"></canvas><input data-thickness=".11" data-height="200" data-width="200" data-displayinput="false" data-fgcolor="#ffd564" data-bgcolor="rgba(255,255,255,0.2)" data-max="24" data-min="0" class="knob hour" style="display: none; width: 0px; visibility: hidden;"></div>
                    <div class="digits-label">hours</div>
                </div>
                <div class="timer-wrap">
                    <div class="timer-bg"></div>
                    <span class="digits">-48</span>
                    <div style="display:inline;width:200px;height:200px;"><canvas height="200px" width="200"></canvas><input data-thickness=".11" data-height="200" data-width="200" data-displayinput="false" data-fgcolor="#ffd564" data-bgcolor="rgba(255,255,255,0.2)" data-max="60" data-min="0" class="knob minute" style="display: none; width: 0px; visibility: hidden;"></div>
                    <div class="digits-label">minutes</div>
                </div>
                <div class="timer-wrap">
                    <div class="timer-bg"></div>
                    <span class="digits">-31</span>
                    <div style="display:inline;width:200px;height:200px;"><canvas height="200px" width="200"></canvas><input data-thickness=".11" data-height="200" data-width="200" data-displayinput="false" data-fgcolor="#ffd564" data-bgcolor="rgba(255,255,255,0.2)" data-max="60" data-min="0" class="knob second" style="display: none; width: 0px; visibility: hidden;"></div>
                    <div class="digits-label">seconds</div>
                </div>
            </div>
                
                <p class="text--light">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent sed tristique massa. Aenean iaculis diam nec ligula ullamcorper eu tempus dolor ullamcorper. Morbi in nisi tincidunt neque gravida facilisis.  Pellentesque mattis nisl eget neque scelerisque adipiscing. Vestibulum euismod commodo odio sit amet congue. Donec ut sem vel mauris sodales egestas. Nulla eget lorem vitae diam ullamcorper tincidunt ut vel est. </p>
        </section>
        </div>

        <div class="copy-bottom copy-bottom--high">
            <p class="copy copy--light">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
        </div>
    
    </div>

    <!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Knob js -->
        <script src="js/jquery.knob.js"></script>
        <!-- Count comimg soon -->
        <script src="js/count.down.js"></script>

        <script>
            $(document).ready(function() {
                //CountDown
                var dateOfBeginning = "Jan 17, 2014", //type your date of the Beginnig
                    dateOfEnd = "Dec 25, 2014"; //type your date of the end

                countDown(dateOfBeginning, dateOfEnd);            
            });
        </script>

</body>
</html>
