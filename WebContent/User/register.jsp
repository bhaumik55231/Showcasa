<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base href="${pageContext.request.contextPath}/User/">
<script>
function ValidationEvent() {

//Storing Field Values in variables
    var fname = document.getElementById("fn").value;
    var lname = document.getElementById("ln").value
	var email = document.getElementById("email").value;
   	var mobileno = document.getElementById("mno").value;
	
	var password=document.getElementById("password").value;
	var password1=document.getElementById("password1").value;
	//Regular Expression For Email 
	
	
	var fname1=/^[a-zA-Z]+$/;
	var lname1=/^[a-zA-Z]+$/;
	var emailReg =/^[a-zA-Z]+([_\.-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z0-9]+)*(\.[a-zA-Z]{2,4})+$/;  /* /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;  */
	var mobile=/^[1-9]{1}[0-9]{9}$/;
	var pass=/^[A-Za-z]\w{5,14}$/;
	
	
	//Conditions
	
	
	
	if (fname != '' && lname != '' && email != '' && mobileno != '' && password != ''&& password1 != '' ) {
		if(fname.match(fname1)){
		if(lname.match(lname1)){
		if(email.match(emailReg)){
			if (mobileno.length == 10 && mobileno.match(mobile)) {
				if( document.getElementById("male1").checked || document.getElementById("female1").checked ) {
				
					if(password.length >=6 && password.length <=13 && password.match(pass)){	
						if(password1.match(password)){
					
					return true;
			}		
				else{
				alert ("Confirm Password does't match with Password");
				return false;
			}
				}
					else{
						alert ("The Password Length Must Be Between 6 to 13 Characters!");
						return false;
					}
			}
				else{
					
					alert ("please select gender.....!");
					return false;
				}
			}
			else{
				alert ("Mobile no. should not start with 0 and must be 10 digits!");
				return false;
			}
		}
			else{
				alert ("Invalid Email Address...!!!");
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
		alert ("All fields are required.....!");
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
<script type="text/javascript">
    function confirmPass() {
        var pass = document.getElementById("pass").value
        var confPass = document.getElementById("c_pass").value
        if(pass != confPass) {
            alert('Your Password And Confirm-Password does not match!');
        
        }
    }
    function Validate1(){
    	var mno=document.getElementById("pass").value;
    	
    	var letter= /^[A-Za-z]\w{5,14}$/;
    	if(mno.match(letter)){

    	return true;
    	}
    	else{
    	alert("Password should contain atleast one Upper Case, one Lower case and between 6 to 14 character");

    	return false;

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
function Email(){
	var mno1=document.getElementById("xyz").value;
	var letter=/^[a-zA-Z]+([_\.-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z0-9]+)*(\.[a-zA-Z]{2,4})+$/;
	if(mno1.match(letter)){

	return true;
	}
	else{
	alert("Enter valid Emaid-Id");

	return false;

	}
	}

</script>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Showcasa - Register</title>
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
        <form action="<%=request.getContextPath() %>/updateUserProfileController" method="post" name="user" onsubmit="return ValidationEvent()">
        <input type="hidden" name="flag" value="add_user"/>
        <div class="registration_form">
        <div class="form-control">
                <label class="col-sm-2 control-label">First Name</label>
    			<div class="col-sm-10">
      			<input type="text" id="fn" class="form-control" placeholder="Enter First Name" name="firstname" required="">
    			</div>
        </div><br><br>
        
        
         <div class="form-control">
                <label class="col-sm-2 control-label">Last Name</label>
    			<div class="col-sm-10">
      			<input type="text" id="ln" class="form-control" placeholder="Enter Last Name" name="lastname" required="">
    			</div>
        </div><br><br>
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Email Id</label>
    			<div class="col-sm-10">
      			<input type="email" id="email" class="form-control" placeholder="Enter Email Id" name="emailid" required="" >
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Mobile No.</label>
    			<div class="col-sm-10">
      			<input type="text" class="form-control" placeholder="Enter Mobile Number" id="mno" name="mobilenumber" required="" >
    			</div><br><br>
        </div>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Country</label>
    			<div class="col-sm-10">
      			<select class="form-control" name="country" id="countryid" onchange="load()">
												<option>---Select Country---</option>
												<c:forEach items="${sessionScope.search_country_for_user }" var="i">
												<option  value="${i.country_id}">${i.country_name}</option>
												</c:forEach> 	
												</select>
												
    			</div><br><br>
        </div>
        
        
        
        
        
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">State</label>
    			<div class="col-sm-10">
      			<select class="form-control" name="state" id="state_id" onchange="load1()">
												
												
 												<option >-----Select State----</option> 
												</select>
												
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">City</label>
    			<div class="col-sm-10">
      			<select class="form-control" name="city">
												
												
 												<option >------Select City-----</option> 
												</select>								
    			</div>
        </div><br><br>
        
        
        <div class="form-control">
  <label class="col-sm-2 control-label">Gender</label>
  <div class="col-sm-1">
  <input type="radio" name="radio" id="male1" class="form-control col-sm-1" value="Male"></div><label class="col-sm-1 control-label">Male</label>
  <div class="col-sm-1"><input type="radio" id="female1" name="radio" class="form-control" value="Female"></div><label class="col-sm-1 control-label">Female</label>
  </div><br><br>
  
        <div class="form-control">
                <label class="col-sm-2 control-label">Password</label>
    			<div class="col-sm-10">
      			<input type="password" class="form-control" placeholder="Enter Password" id="password" name="password" required="" >
    			</div><br><br>
        </div>
        
        
        
        <div class="form-control">
                <label class="col-sm-2 control-label">Confirm Password</label>
    			<div class="col-sm-10">
      			<input type="password" class="form-control" placeholder="RE-enter Password" id="password1" name="reenterpassword" required="" >
    			</div><br><br>
        </div>
        
        
        <div class="form-control">
              
    			<div class="col-sm-4">
      			<input type="submit" class="btn btn--warning form-control" value="Submit">
      			<input type="reset" class="btn btn--warning form-control" value="Reset">
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
