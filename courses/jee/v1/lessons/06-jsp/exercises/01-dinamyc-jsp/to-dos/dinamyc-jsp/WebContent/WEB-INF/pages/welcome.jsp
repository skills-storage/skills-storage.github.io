<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="welcome.html">
		<input name="first_name">
		
		<input type="submit" value="go-go-go" />
		
	</form>

<%
	String fName = request.getParameter("first_name");
	session.setAttribute("f_name_attr", fName);


%>



</body>
</html>