package com.skillsimprover.dispatcher.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/first.html")
public class FirstServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Integer> array = buildValuesArray();

		request.setAttribute("array_data", array);

		HttpSession session = request.getSession();
		List<List<Integer>> arrayHistory = (List<List<Integer>>)session.getAttribute("array_history");
		if (arrayHistory == null) {
			arrayHistory = new ArrayList<>();
		}

		arrayHistory.add(array);
		session.setAttribute("array_history", arrayHistory);

		RequestDispatcher dispatcher = request.getRequestDispatcher("second.html");
		dispatcher.forward(request, response);
	}

	private List<Integer> buildValuesArray() {
		Random random = new Random();
		int arraySize = random.nextInt(20);
		List<Integer> values = new ArrayList<>();

		for (int i = 0; i < arraySize; i++) {
			Integer nextValue = random.nextInt(1000);
			values.add(nextValue);
		}

		return values;
	}
}
