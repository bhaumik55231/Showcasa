<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/UploadServletMultiple" method="post">
<input type="hidden" name="flag" value="add_file">
Movie Name<input type="text" name="moviename" required=""><br>
Movie Poster<input type="file" required=""><br>
<input type="submit" value="Submit"><br>





</form>
</body>
</html>