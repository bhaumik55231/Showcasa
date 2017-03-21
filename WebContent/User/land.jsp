<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html">
<% 
	String flag = (String) request.getParameter("flag");
	int show_id = Integer.parseInt(request.getParameter("show_id"));
	int enc = Integer.parseInt(request.getParameter("enc"));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Land</title>
</head>
<body>
<c:choose>
	<c:when test="${ empty sessionScope.task_done}">
		<%response.sendRedirect("../bookingHistoryController?flag="+flag+"&show_id="+show_id+"&enc="+enc);%> 
	</c:when>
	<c:otherwise>
	<c:choose>
	<c:when test="${not empty sessionScope.task_enc}">
	<!-- BODY -->
		<%session.setAttribute("task_done", null); %>
		<%session.setAttribute("task_enc", null); %>
		<h1><%=session.getAttribute("from_controller") %></h1>
		<h1>Task Done: <%=session.getAttribute("task_done") %></h1>
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