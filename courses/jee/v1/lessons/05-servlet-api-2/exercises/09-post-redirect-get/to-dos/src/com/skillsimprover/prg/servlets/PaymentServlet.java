package com.skillsimprover.prg.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/payment.html")
public class PaymentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		Double moneyBalance = (Double) session.getAttribute("money_balance");
		if (moneyBalance == null) {
			moneyBalance = 1000.0;
		}

		List<String> paymentHistory = (List<String>) session.getAttribute("payment_history");
		if (paymentHistory == null) {
			paymentHistory = new ArrayList<>();
		}

		String payBtn = request.getParameter("pay_btn");
		if (payBtn != null) {
			String serviceName = request.getParameter("service_name");
			String servicePriceStr = request.getParameter("service_price");
			Double servicePrice = new Double(servicePriceStr);

			moneyBalance = moneyBalance - servicePrice;
			
			String currentPayment = serviceName + " - " + servicePrice;
			paymentHistory.add(currentPayment);
		}

		session.setAttribute("money_balance", moneyBalance);
		session.setAttribute("payment_history", paymentHistory);

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Система оплаты комунальных услуг</h1>");

		out.println("<hr>");
		    
		out.println("<h3>Ваш баланс: " + moneyBalance + " рублей</h3>");
		out.println("<h3>Пора оплатить газ-свет-интернет</h3>");

		out.println("<form action=\"payment.html\" method=\"get\">");
		out.println("Введите название услуги:");
		out.println("<br>");
		out.println("<input name=\"service_name\" />");

		out.println("<br>");
		out.println("<br>");

		out.println("Введите сумму:");
		out.println("<br>");
		out.println("<input name=\"service_price\" />");

		out.println("<br>");
		out.println("<br>");

		out.println("<input type=\"submit\" name=\"pay_btn\" value=\"Оплатить\">");
		out.println("</form>");

		out.println("<br>");
		out.println("<hr>");

		out.println("<h3>Благодарим за своевременную оплату услуг!</h3>");
		out.println("<h3>Проверьте историю Ваших платежей:</h3>");

		out.println("<ul>");
		
		for (String payment : paymentHistory) {
			out.println("<li>" + payment + "</li>");
		}

		out.println("</ul>");

		out.println("</body>");
		out.println("</html>");
	}
}
