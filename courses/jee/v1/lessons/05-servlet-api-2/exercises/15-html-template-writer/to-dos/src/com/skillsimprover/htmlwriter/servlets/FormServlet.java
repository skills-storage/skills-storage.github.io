package com.skillsimprover.htmlwriter.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skillsimprover.htmlwriter.writer.HtmlTemplateWriter;

@WebServlet("/index.html")
public class FormServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = request.getServletContext();
		String templatePath = "/WEB-INF/templates/index.html";
		String fullTemplatePath = context.getRealPath(templatePath);

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		HtmlTemplateWriter writer = new HtmlTemplateWriter(fullTemplatePath);
		writer.writeTemplate(out);
	}
}
