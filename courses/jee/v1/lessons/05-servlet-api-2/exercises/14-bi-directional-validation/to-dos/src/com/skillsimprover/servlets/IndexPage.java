package com.skillsimprover.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index.html")
public class IndexPage extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Map<String, String> paramsMap = (Map<String, String>)request.getAttribute("paramsMap");
		Map<String, String> errorsMap = (Map<String, String>)request.getAttribute("errorsMap");

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='utf-8'>");
		out.println("<title>BiDirectional Validation Example</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1 style='text-align: center;'>BiDirectional Validation Example</h1>");

		out.println("<form action='result-page' method='post'>");
        out.println("<h3>Fill the form:</h3>");

        out.println("<br>");

        String personNameParam = getValueFromMap(paramsMap, "personNameParam");
        String personNameError = getValueFromMap(errorsMap, "personNameError");

        out.println("Person Name:");
        out.println("<br>");
        out.println("<input type='text' name='txt_name' value='" + personNameParam + "' /> &nbsp;&nbsp;" + personNameError);

        out.println("<br><br>");

        String personAgeParam = getValueFromMap(paramsMap, "personAgeParam");
        String personAgeError = getValueFromMap(errorsMap, "personAgeError");

        out.println("Person Age:");
        out.println("<br>");
        out.println("<input type='text' name='txt_age' value='" + personAgeParam + "' /> &nbsp;&nbsp;" + personAgeError);

        out.println("<br><br>");

        out.println("<input type='submit' value='Show Results' />");
        out.println("</form>");

		out.println("</body>");
		out.println("</html>");
	}

	private String getValueFromMap(Map<String, String> map, String key) {
		if (map == null) {
			return "";
		}

		String value = map.get(key);
		if (value == null) {
			return "";
		}

		return value;
	}
}
