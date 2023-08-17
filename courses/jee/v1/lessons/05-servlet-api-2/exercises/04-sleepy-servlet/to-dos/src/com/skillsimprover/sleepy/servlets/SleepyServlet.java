package com.skillsimprover.sleepy.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SleepyServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		try {
			Thread.sleep(60 * 1000 * 2);	// Just let's sleep for 2 minutes
		} catch (InterruptedException e) {
			throw new ServletException("Somebody woke up me!", e);
		}
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		out.println("I dont like to sleep, but the sleep likes me!");

		out.close();
	}
}
