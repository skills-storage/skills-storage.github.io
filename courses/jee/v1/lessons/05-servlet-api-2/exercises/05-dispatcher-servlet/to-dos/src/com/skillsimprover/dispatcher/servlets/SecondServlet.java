package com.skillsimprover.dispatcher.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
		Path path = Paths.get("D:/", "data.db");
		List<String> data = Files.readAllLines(path);

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<link rel='stylesheet' type='text/css' href='css/styles.css'>");

		RequestDispatcher dispatcher = request.getRequestDispatcher("header.html");
		dispatcher.include(request, response);

		out.println("<h1>Values from the data.db file:</h1>");
		out.println("<ul>");

		for (String line : data) {
			out.print("<li>");
			out.print(line);
			out.print("</li>");
		}

		out.println("</ul>");

		dispatcher = request.getRequestDispatcher("footer.html");
		dispatcher.include(request, response);
	}
}
