<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<base href="${pageContext.request.contextPath}/User/">
<script>
function Validate_form()
{
	var fname = document.getElementById("fn").value;
	var lname = document.getElementById("ln").value;
	var mobileno = document.getElementById("mno").value;
	
	var fname1=/^[a-zA-Z]+$/;
	var lname1=/^[a-zA-Z]+$/;
	var mobile=/^[1-9]{1}[0-9]{9}$/;
	
	if (fname != '' && lname != '' && mobileno != '' ) {
		if(fname.match(fname1)){
			if(lname.match(lname1)){
				if (mobileno.length == 10 && mobileno.match(mobile)) {
					if( document.getElementById("male1").checked || document.getElementById("female1").checked ) {
					
						return true;
					}
					else{
						alert ("please select gender.....!");	
						return false;
					}
				}
				else{
					alert("Mobile no. should not start with 0 and must be 10 digits!");
					return false;
				}
			}
			else{
				alert ("Invalid lastname!!! enter only character");
				return false;
			}
		}
		else{
			alert ("Invalid firstname!!! enter only character");
			return false;
		}  
	}
	else{
		alert("All fields are required....!");
		return false;
	}
	}
</script>


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
	
	xmlhttp.open("get", "${pageContext.request.contextPath}/updateUserProfileController?flag=loadstate&countryId="+cid.value, true);
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
			
			xmlhttp.open("get", "${pageContext.request.contextPath}/updateUserProfileController?flag=loadcity&stateId="+sid.value, true);
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


	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Update Profile</title>
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
       
        <br><br><br><br>
        <!-- Main content -->
        <form action="<%=request.getContextPath() %>/updateUserProfileController" method="post" name="user" onsubmit="return Validate_form()">
		
        
        
        <div class="registration_form">
        <c:forEach items="${sessionScope.edit_user }" var="x">
		<input type="hidden" name="flag" value="update"/>    
		<input type="hidden" name="UserId" value="${x.user_id }">  
		<input type="hidden" name="LoginId" value="<%=session.getAttribute("loginID")%>"/> 
        
        
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">First Name</label>
    			<div class="col-sm-10">
      			<input type="text" class="form-control" id="fn" placeholder="Enter First Name" name="firstname" value="${x.first_name }" required="">
    			</div>
        </div><br><br>
        
        
         <div class="form-control">
                <label class="col-sm-2 control-label">Last Name</label>
    			<div class="col-sm-10">
      			<input type="text" class="form-control" id="ln" placeholder="Enter Last Name" name="lastname" value="${x.last_name }" required="">
    			</div>
        </div><br><br>
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Email Id</label>
    			<div class="col-sm-10">
      			<input type="text" class="form-control disabled" placeholder="Enter Email Id" name="emailid" value="${x.email_id }" required="" disabled="disabled">
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Mobile No.</label>
    			<div class="col-sm-10">
      			<input type="text" class="form-control" placeholder="Enter Mobile Number" id="mno" name="mobilenumber" value="${x.mobile_number }" required="">
    			</div><br><br>
        </div>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Country</label>
    			<div class="col-sm-10">
      			<select name="country" id="countryid" onchange="load()" class="required form-control">
												<option value="${x.country_id.country_id }">${x.country_id.country_name }</option>
												<c:forEach items="${sessionScope.search_country_for_user }" var="i">
												<option  value="${i.country_id}">${i.country_name}</option>
												</c:forEach> 	
												</select>
												
    			</div><br><br>
        </div>
        
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">State</label>
    			<div class="col-sm-10">
      			<select name="state" id="state_id" onchange="load1()" class="required form-control">
												
												
 												<option value="${x.state_id.state_id }">${x.state_id.state_name }</option>
                                <c:forEach items="${sessionScope.search_state_for_user }" var="j">
                                	<option value="${j.state_id }">${j.state_name }</option>	
                                </c:forEach>                            
                 </select>
												
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">City</label>
    			<div class="col-sm-10">
      			<select name="city" class="required form-control">
                                <option value="${x.city_id.city_id }">${x.city_id.city_name }</option>
                                <c:forEach items="${sessionScope.search_city_for_user }" var="j">
                                	<option value="${j.city_id }">${j.city_name }</option>	
                                </c:forEach>                            
                 </select>								
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
  <label class="col-sm-2 control-label">Gender</label>
  <div class="col-sm-1">
  <input type="radio" name="radio" id="male1" class="form-control col-sm-1" value="Male"></div><label class="col-sm-1 control-label">Male</label>
  <div class="col-sm-1">
  <input type="radio" name="radio" id="female1" class="form-control" value="Female"></div><label class="col-sm-1 control-label">Female</label>
  </div><br><br>
  
        <%-- <div class="form-control">
                <label class="col-sm-2 control-label">Password</label>
    			<div class="col-sm-10">
      			<input type="password" class="form-control" placeholder="Enter Password" id="password" name="password" value="${x.password }" required="">
    			</div><br><br>
        </div> --%>
        <input type="hidden" class="form-control" placeholder="Enter Password" id="password" name="password" value="${x.password }" required="">
        
        </c:forEach> 
       
        
        <div class="form-control">
              
    			<div class="col-sm-4">
      			<input type="submit" class="btn btn--warning form-control" value="Update">
      			
      			<input type="button" class="btn btn--warning form-control" value="Cancel">
    			</div>
        </div>
        
        
        
        </div>
               
                
        </form>        
                
                
              
                
                
                
                
                
                
                
                
                
        <div class="clearfix"></div>
    </div>

    <%@include file="footer.jsp" %>

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
        <!-- Form element -->
        <script src="js/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
        

</body>
</html>
