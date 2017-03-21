<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
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
				
				document.user.StateId.options.add(createOption);
				
			}
		}
	}
	
	xmlhttp.open("get", "${pageContext.request.contextPath}/userRegistrationController?flag=loadstate&countryId="+cid.value, true);
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
	
	var removeState=document.user.StateId.options.length;
	for(i=removeState ; i>0 ; i-- )
	{
		document.user.StateId.remove(i);
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
						
						document.user.CityId.options.add(createOption);
						
					}
				}
			}
			
			xmlhttp.open("get", "${pageContext.request.contextPath}/userRegistrationController?flag=loadcity&stateId="+sid.value, true);
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
			
			var removeCity=document.user.CityId.options.length;
			for(i=removeCity ; i>0 ; i-- )
			{
				document.user.CityId.remove(i);
			}
		}

		
		
		</script>
		<script>
		function Validation(){
			var fn=document.getElementById("firstname").value;
			var ln=document.getElementById("lastname").value;
			var email=document.getElementById("emailid").value;
			var mnum=document.getElementById("mobilenumber").value;
			
			var fname1=/^[a-zA-Z]+$/;
	    	var lname1=/^[a-zA-Z]+$/;
	    	var emailReg =/^[a-zA-Z]+([_\.-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z0-9]+)*(\.[a-zA-Z]{2,4})+$/;  /* /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  */
	    	var mobile=/^[1-9]{1}[0-9]{9}$/;
	    	
	    	
	    	if(fn != '' && ln != '' && email != '' && mnum != ''){
	    		if(fn.match(fname1)){
	    			if(ln.match(lname1)){
	    				if(email.match(emailReg)){
	    					if(mnum.match(mobile)){
	    						return true;
	    					}
	    					else{
	    						alert("Mobile no. should not start with 0 and must be 10 digits!");
	    						return false;
	    					}
	    				}
	    				else{
	    					alert("Enter Valid Email-Id!");
	    					return false;
	    				}
	    			}
	    			else{
	    				alert("Numerical entries are not allowed in Last Name!");
	    				return false;
	    			}
	    		}
	    		else{
	    			alert("Numerical entries are not allowed in First Name!");
	    			return false;
	    		}
	    	}
	    	else{
	    		alert("All Fields are Required");
	    		return false;
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
                    <li><a href="#">Update User</a></li>        </ul>
            </nav>

            <!-- main content -->
                   
	<div id="main_wrapper">


			


			<!-- Page header -->
			<div class="page-header">
				<div class="page-title">
					<h3>Update User Details</h3>
				</div>
			</div>
			<!-- /page header -->


			


			<!-- Form validation -->
			<c:forEach items="${sessionScope.edit_user }" var="x">
            <form class="form-horizontal validate" action="<%=request.getContextPath() %>/userRegistrationController" method="post" name="user" onsubmit="return Validation()">
	            <div class="block">
	                

						<div class="form-group">
  						<label class="col-sm-2 control-label">First Name</label>
    					<div class="col-sm-10">
      					<input type="text" class="form-control" id="firstname"  name="firstname" required="" value="${x.first_name }">
    					</div>
  						</div>
  

						<div class="form-group">
  						<label class="col-sm-2 control-label">Last Name</label>
    					<div class="col-sm-10">
      					<input type="text" class="form-control" id="lastname" name="lastname" required="" value="${x.last_name }">
    					</div>
  						</div>
  
						
						<div class="form-group">
  						<label class="col-sm-2 control-label">Email Id</label>
    					<div class="col-sm-10">
      					<input type="text" class="form-control" id="emailid" name="emailid" required="" value="${x.email_id }">
    					</div>
  						</div>
  						
  						<div class="form-group">
  						<label class="col-sm-2 control-label">Mobile Number</label>
    					<div class="col-sm-10">
      					<input type="text" class="form-control" id="mobilenumber" name="mobilenumber" required="" value="${x.mobile_number }">
    					</div>
  						</div>
  						
  						
						
                		<div class="form-group">
						<label class="col-sm-2 control-label">Select Country: <span class="mandatory">*</span></label>
						<div class="col-sm-10">
                            <select name="CountryId" id="countryid" onchange="load()" class="required form-control" required="">
                                <option value="${x.country_id.country_id }">${x.country_id.country_name }</option>
												<c:forEach items="${sessionScope.search_country_for_city }" var="i">
												<option  value="${i.country_id}">${i.country_name}</option>
												</c:forEach>
                            </select>
						</div>
					</div>
                
                 		<div class="form-group">
						<label class="col-sm-2 control-label">Select State: <span class="mandatory">*</span></label>
						<div class="col-sm-10">
                            <select name="StateId" class="required form-control" id="state_id" onchange="load1()" required="">
                                <option value="${x.state_id.state_id }">${x.state_id.state_name }</option>
                                <c:forEach items="${sessionScope.search_state_for_city }" var="j">
                                	<option value="${j.state_id }">${j.state_name }</option>	
                                </c:forEach>                            
                                </select>
						</div>
					</div>
                
                
                	                	
					<div class="form-group">
						<label class="col-sm-2 control-label">Select City: <span class="mandatory">*</span></label>
						<div class="col-sm-10">
                            <select name="CityId" class="required form-control" required="">
                                <option value="${x.city_id.city_id }">${x.city_id.city_name }</option>
                                <c:forEach items="${sessionScope.search_city_for_city }" var="j">
                                	<option value="${j.city_id }">${j.city_name }</option>	
                                </c:forEach>                            
                                </select>
						</div>
					</div>
                
					
					<input type="hidden" name="CityId" value="${x.user_id }">
					<input type="hidden" name="flag" value="update_user"/>
							
                    <div class="form-actions text-center">
                    	<input type="submit" value="Update" class="btn btn-primary">
                    	<input type="reset" value="Reset" class="btn btn-primary">
                    </div>
                    
                    
                </div>
            </form>
            </c:forEach>
            <!-- /form validation -->



                	</div>	
	
	



    
            <!-- main menu -->
            <%@include file="menu.jsp" %>

        

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
