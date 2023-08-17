package com.skillsimprover.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skillsimprover.utils.HttpUtils;
import com.skillsimprover.utils.StringUtils;

@WebServlet("/result-page")
public class BiDirectionalValidationPage extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Map<String, String> paramsMap = new HashMap<>();
		Map<String, String> errorsMap = new HashMap<>();

		String personName = request.getParameter("txt_name");
		if (StringUtils.isBlank(personName)) {
			String errorMsg = buildErrorMessage("Error! Person Name can not be blank!");
			errorsMap.put("personNameError", errorMsg);
		} else {
			paramsMap.put("personNameParam", personName);
		}

		Integer personAge = HttpUtils.getIntParam(request, "txt_age");
		String personAgeStr = "";
		String errorMsg = "";
		if (personAge == null) {
			errorMsg = buildErrorMessage("Error! Person Age can not be NULL!");
			errorsMap.put("personAgeError", errorMsg);
		} else if (personAge <= 0) {
			errorMsg = buildErrorMessage("Error! Person Age should be greater than 0!");
			errorsMap.put("personAgeError", errorMsg);
		} else if (personAge > 255) {
			errorMsg = buildErrorMessage("Error! Person Age should be less than 255!");
			errorsMap.put("personAgeError", errorMsg);
		} else {
			personAgeStr = personAge.toString();
			paramsMap.put("personAgeParam", personAgeStr);
		}

		if (!errorsMap.isEmpty()) {
			request.setAttribute("paramsMap", paramsMap);
			request.setAttribute("errorsMap", errorsMap);

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.html");
			dispatcher.forward(request, response);

			return;
		}

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='utf-8'>");
		out.println("<title>Validation Results Page</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1 style='text-align: center;'>Validation Results Page</h1>");
		out.println("Person Name: <b>" + personName + "</b>");
		out.println("<br>");
		out.println("Person Age: <b>" + personAgeStr + "</b>");
		out.println("<br>");
		out.println("<br>");

		ServletContext context = request.getServletContext();
		String appContext = context.getContextPath();

		out.println("<a href='" + appContext + "/index.html'>Go Back Index Page</a>");
		out.println("</body>");
		out.println("</html>");
	}

	private String buildErrorMessage(String errorMessage) {
		return "<span style='color: red;'>" + errorMessage + "</span>";
	}
}
