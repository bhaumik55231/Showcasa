<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a1=request.getParameter("firstname");
String a2=request.getParameter("lastname");
String a3=request.getParameter("emailid");
String a4=request.getParameter("mobilenumber");
String a5=request.getParameter("country");
String a6=request.getParameter("state");
String a7=request.getParameter("city");
String a8=request.getParameter("radio");

String a9=request.getParameter("password");
String a10=request.getParameter("reenterpassword");



session.setAttribute("firstname", a1);
session.setAttribute("lastname", a2);
session.setAttribute("emailid", a3);
session.setAttribute("mobilenumber", a4);
session.setAttribute("country", a5);
session.setAttribute("state", a6);
session.setAttribute("city", a7);
session.setAttribute("radio", a8);
session.setAttribute("Password", a9);
session.setAttribute("Confirm-Password", a10);


String b1=(String)session.getAttribute("Password");
String b2=(String)session.getAttribute("Confirm-Password");


if(b1.equals(b2))
{
	response.sendRedirect("/userRegistrationController");
}
else
{
	
	session.setAttribute("invalid", "Password and Confirm Password should be same.");
	response.sendRedirect("userRegistration.jsp");
	
}
	
	
	
%>
</body>
</html>