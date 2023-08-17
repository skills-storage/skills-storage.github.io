package com.skillsimprover.usersdb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skillsimprover.usersdb.data.User;

@WebServlet("/users")
public class UsersServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private List<User> allUsers = new ArrayList<>();
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();

        String saveBtn = request.getParameter("btn_save_user");
        if (saveBtn != null) {
            String userName = request.getParameter("txt_login");
            String password = request.getParameter("txt_password");
            String dobStr = request.getParameter("txt_dob");
            Date dob = null;

            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            try {
                dob = format.parse(dobStr);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setDob(dob);
            
            allUsers.add(user);
        }

        out.println("<!DOCTYPE html>");

        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"utf-8\">");

        ServletContext context = request.getServletContext();

        out.println("<link rel=\"stylesheet\" href=\"" + context.getContextPath() +"/styles/main.css\" type=\"text/css\">");

        out.println("<title>JEE Laboratory - Users DB</title>");
            

        out.println("</head>");
        out.println("<body>");

        out.println("<div class=\"dataFrame largeFrame\">");
        out.println("<h1>Users DB - Список пользователей</h1>");

        out.println("<table border=\"1\">");
        out.println("<thead>");
        out.println("<tr>");
        out.println("<th>Имя Пользователя</th>");
        out.println("<th>Пароль</th>");
        out.println("<th>Дата рождения</th>");
        out.println("</tr>");
        out.println("</thead>");

        out.println("<tbody id=\"employeesTable\">");
        
        for (User user : allUsers) {
            out.println("<tr>");
                out.println("<td>");
                out.println(user.getUserName());
                out.println("</td>");
            
                out.println("<td>");
                out.println(user.getPassword());
                out.println("</td>");

                out.println("<td>");
                out.println(user.getDobAsStr());
                out.println("</td>");
            out.println("</tr>");
        }
        
        
        out.println("</tbody>");
        out.println("</table>");

        out.println("<br />");
        out.println("<hr />");
        out.println("<br />");

        out.println("<div class=\"dataFrame shortFrame\">");
        out.println("<h1>Добавить пользователя</h1>");

        out.println("<form action=\"users\" method=\"post\">");
        out.println("Имя пользователя:");
        out.println("<br />");
        out.println("<input type=\"text\" id=\"txt_login\" name=\"txt_login\" />"); 
//        out.println("<span class=\"errorText\">Введите имя пользователя!</span>");

        out.println("<br />");
        out.println("<br />");

        out.println("Пароль:");
        out.println("<br />");
        out.println("<input type=\"text\" id=\"txt_password\" name=\"txt_tassword\" />");
//        out.println("<span class=\"errorText\">Введите пароль!</span>");

        out.println("<br />");
        out.println("<br />");

        out.println("Пароль:");
        out.println("<br />");
        out.println("<input type=\"date\" id=\"txt_dob\" name=\"txt_dob\" />");

        out.println("<br />");
        out.println("<br />");
        out.println("<input type=\"submit\" name=\"btn_save_user\" value=\"Сохранить\" />");
        out.println("</form>");
        out.println("</div>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }
}
