package com.skillsimprover.gistogram.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index.html")
public class GistogramServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html lang='en'>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Gistorgam Servlet</title>");
        out.println("</head>");
        out.println("<body style='margin: 30px'>");
        out.println("<form action='index.html' method='post'>");
        out.println("Enter Values using space:");
        out.println("<br>");
        out.println("<input type='text' name='input_values'>");
        out.println("<br><br>");
        out.println("<input type='submit' name='draw_btn' value='Graw Gistogram'>");
        out.println("</form>");

        HttpSession session = request.getSession();
        List<Integer> gistogramValues = (List<Integer>) session.getAttribute("gistorgam_values");
        if (gistogramValues == null) {
            return;
        }

        out.println("<br><br>");
        out.println("<hr>");
        out.println("Results:");
        out.println("<br><br>");

        for(Integer value : gistogramValues) {
            out.println("<div style='border: 3px black solid; height: 20px; width: " + value + "px; margin: 20px; background-color: red'></div>");
        }

        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputStr = request.getParameter("input_values");
        List<Integer> inputValues = convertStringToIntArray(inputStr);

        HttpSession session = request.getSession();
        session.setAttribute("gistorgam_values", inputValues);

        response.sendRedirect("index.html");
    }

    private List<Integer> convertStringToIntArray(String strValues) {
        List<Integer> result = new ArrayList<>();
        if (strValues == null) {
            return result;
        }

        String[] strArray = strValues.split(" ");
        for (String strVal : strArray) {
            try {
                Integer value = Integer.parseInt(strVal);
                result.add(value);
            } catch (Exception e) {
                System.out.println("Bad input for: " + strVal + "! Ignore this value.");
            }
        }

        return result;
    }
}
