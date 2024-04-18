package org.example.web_assignment_cookies;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "rememberedPage", value = "/remembered-page")
public class RememberedPage extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Cookie[] cookie = request.getCookies();
        PrintWriter writer = response.getWriter();

        if (cookie != null){

            String htmlRespone = "<html>";
            for (Cookie value : cookie) {
                System.out.println(value.getValue());
                htmlRespone += "<h2> Your " + value.getName() + " is: " + value.getValue() + "</h2>";
            }
            htmlRespone += "</html>";

            writer.println(htmlRespone);
        }

        writer.close();
    }
}
