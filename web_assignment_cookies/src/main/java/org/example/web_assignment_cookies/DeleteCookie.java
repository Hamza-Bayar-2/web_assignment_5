package org.example.web_assignment_cookies;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "deleteCookie", value = "/delete-cookie")
public class DeleteCookie extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        PrintWriter writer = response.getWriter();

        Cookie mailCookie = new Cookie("email", "");
        Cookie nameCookie = new Cookie("name", "");
        Cookie surnameCookie = new Cookie("surname", "");
        Cookie numberCookie = new Cookie("phone_number", "");
        Cookie passwordCookie = new Cookie("password", "");
        Cookie rememberCookie = new Cookie("remember", "");

        mailCookie.setMaxAge(0);
        nameCookie.setMaxAge(0);
        surnameCookie.setMaxAge(0);
        numberCookie.setMaxAge(0);
        passwordCookie.setMaxAge(0);
        rememberCookie.setMaxAge(0);

        response.addCookie(mailCookie);
        response.addCookie(nameCookie);
        response.addCookie(surnameCookie);
        response.addCookie(numberCookie);
        response.addCookie(passwordCookie);
        response.addCookie(rememberCookie);

        String htmlRespone = "<html>";
        htmlRespone += "<h2>you are successfully logged out!<br/>";
        htmlRespone += "<a href=\"index.jsp\">go back</a></h2>";
        htmlRespone += "</html>";

        writer.print(htmlRespone);
        writer.close();
    }
}
