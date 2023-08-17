package com.skillsimprover.dispatcher.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second.html")
public class SecondServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		Object arrayAttr = request.getAttribute("array_data");
		List<Integer> valuesArray = (List<Integer>) arrayAttr;

		out.println("<h1>Текущий массив чисел:</h1>");
		out.println(valuesArray.toString());

		out.println("<br />");
		out.println("<br />");
		out.println("<a href='first.html'>Попробовать еще</a>");
	}
}
