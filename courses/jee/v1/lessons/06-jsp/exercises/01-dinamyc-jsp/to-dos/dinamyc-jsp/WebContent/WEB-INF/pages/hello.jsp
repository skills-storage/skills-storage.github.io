<%@page import="com.belhard.utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>

	<body>
		<%
			String firstName = request.getParameter("txt_first_name");
			if (StringUtils.isBlank(firstName)) {
				firstName = "NoName";
			}
			firstName = StringUtils.capitalizeFirstLetter(firstName);

			String lastName = request.getParameter("txt_last_name");
			if (StringUtils.isBlank(lastName)) {
				lastName = "NoName";
			}
			lastName = StringUtils.capitalizeFirstLetter(lastName);		
		%>	

		<center>
			<h1>Hello Page</h1>
		</center>

		<h1>Hello, <%=firstName %> <%=lastName %> </h1>

		<a href="index.html">Go To Index Page</a>
	</body>
</html>