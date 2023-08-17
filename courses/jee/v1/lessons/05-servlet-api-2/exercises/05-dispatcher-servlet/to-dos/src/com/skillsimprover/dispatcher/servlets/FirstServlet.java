package com.skillsimprover.dispatcher.servlets;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first.html")
public class FirstServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random random = new Random();
		int arraySize = random.nextInt(20);
		List<String> data = new ArrayList<>();

		for (int i = 0; i < arraySize; i++) {
			Integer nextValue = random.nextInt(1000);
			data.add(nextValue.toString());
		}

		Path path = Paths.get("D:/", "data.db");
		Files.write(path, data);

		RequestDispatcher dispatcher = request.getRequestDispatcher("second.html");
		dispatcher.forward(request, response);
	}
}
