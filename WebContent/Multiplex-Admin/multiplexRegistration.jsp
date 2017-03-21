<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <base href="${pageContext.request.contextPath}/Multiplex-Admin/">

<script>
function load()
{
/*	alert("Hello");*/
	var cid=document.getElementById("countryid");
	var xmlhttp;
	
	xmlhttp=new XMLHttpRequest();
	removeAllState();
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].stateId;
				createOption.text=jsonObj[i].stateName;
				
				document.user.state.options.add(createOption);
				
			}
		}
	}
	
	xmlhttp.open("get", "${pageContext.request.contextPath}/multiplexRegistrationController?flag=loadstate&countryId="+cid.value, true);
	xmlhttp.send();
	/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */

	/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
		0: request not initialized
		1: server connection established
		2: request received
		3: processing request
		4: request finished and response is ready */
}
function removeAllState()
{
	
	var removeState=document.user.state.options.length;
	for(i=removeState ; i>0 ; i-- )
	{
		document.user.state.remove(i);
	}
}

		</script>                            
		
		
		
		<script>
		function load1()
		{
			/* alert("Hello"); */
			var sid=document.getElementById("state_id");
			var xmlhttp;
			
			xmlhttp=new XMLHttpRequest();
			removeAllCity();
			
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) 
				{
					var jsonObj = JSON.parse(xmlhttp.responseText);
					
					for(i=0 ; i<jsonObj.length ; i++)
					{
						var createOption=document.createElement("option");
						
						createOption.value=jsonObj[i].cityId;
						createOption.text=jsonObj[i].cityName;
						
						document.user.city.options.add(createOption);
						
					}
				}
			}
			
			xmlhttp.open("get", "${pageContext.request.contextPath}/multiplexRegistrationController?flag=loadcity&stateId="+sid.value, true);
			xmlhttp.send();
			/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */

			/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
				0: request not initialized
				1: server connection established
				2: request received
				3: processing request
				4: request finished and response is ready */
		}
		function removeAllCity()
		{
			
			var removeCity=document.user.city.options.length;
			for(i=removeCity ; i>0 ; i-- )
			{
				document.user.city.remove(i);
			}
		}

		
		
		</script>
    
		<meta charset="UTF-8">
		<title>Showcasa Admin(dashboard)</title>
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
            
<%@include file="header.jsp" %>
            <!-- breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="admin_userregistration.jsp">User Registration</a></li>        </ul>
            </nav>

            <!-- main content -->
                    
            
<div id="main_wrapper">


<form class="form-horizontal" action="<%=request.getContextPath()%>/multiplexRegistrationController" method="post" name="multplex">
  <div class="form-group">
    <label class="col-sm-2 control-label">Multiplex Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="" name="multiplexName" required="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Owner Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="" name="multiplexOwnerName" required="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Number of Screens</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="" name="screen" required="">
    </div>
  </div>
   <div class="form-group">
    <label class="col-sm-2 control-label">Website URL</label>
    <div class="col-sm-10">
      <input type="textbox" class="form-control" placeholder="" name="url" required="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Email ID</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" placeholder="" name="emailid" required="">
    </div>
  </div>
  <div class="form-group">
	<label class="col-sm-2 control-label">Head Office Address</label>
    <div class="col-sm-10">
      <textarea class="form-control" row="5" placeholder="" name="headOffice" required="" onblur="validate(this)">
    </textarea></div>
  </div>
	<div class="form-group">
	<label class="col-sm-2 control-label">Contact Person Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="" name="multiplexContactName" required="" onblur="validate(this)">
    </div>
  </div>
<div class="form-group">
	<label class="col-sm-2 control-label">Contact Person Number</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="" name="multiplexContactNumber" required="" onblur="validate(this)">
    </div>
  </div>
<div class="form-group">
    <label class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" id="pass" class="form-control" placeholder="Password" required="" name="password">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Confirm-Password</label>
    <div class="col-sm-10">
      <input type="password" id="c_pass" class="form-control" placeholder="Re-enter Password" required="" name="reenterpassword" onblur="confirmPass()">
    </div>
  </div>



<script type="text/javascript">
    function confirmPass() {
        var pass = document.getElementById("pass").value
        var confPass = document.getElementById("c_pass").value
        if(pass != confPass) {
            alert('Your Password And Confirm-Password does not match!');
        
        }
    }

function validate(form){
var mno1=document.getElementById("mno").value;
var letter=/^[1-9]{1}[0-9]{9}$/;
if(mno1.match(letter)){

return true;
}
else{
alert("Enter 10 digit mobile number");

return false;

}
}
</script>
<script type="text/javascript">

	

</script>
  
  
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Register</button>
      <button type="reset" class="btn btn-primary">Reset</button>
      <button type="button" class="btn btn-primary">Cancel</button>
      <input type="hidden" name="flag" value="add_multiplex">
    </div>
  </div>
</form>
</div>




<!-- main menu -->
            <%@include file="menu.jsp" %>

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

            <!-- c3 charts -->
            <script src="js/d3.min.js"></script>
            <script src="js/c3.min.js"></script>
            <!-- vector maps -->
            <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="js/jquery-jvectormap-world-mill-en.js"></script>
            <!-- countUp animation -->
            <script src="js/countUp.min.js"></script>
            <!-- easePie chart -->
            <script src="js/jquery.easypiechart.min.js"></script>

            <script>
                $(function() {
                    // c3 charts
                    yukon_charts.p_dashboard();
                    // countMeUp
                    yukon_count_up.init();
                    // easy pie chart
                    yukon_easyPie_chart.p_dashboard();
                    // vector maps
                    yukon_vector_maps.p_dashboard();
                    // match height
                    yukon_matchHeight.p_dashboard();
                })
            </script>
		
        <!-- style switcher -->

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
