package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");


        String number = request.getParameter("number");
        PrintWriter out = response.getWriter();
        int num = Integer.parseInt(number);

            out.println("" +
                    "<html>\n" +
                    "   <head><title>"+num + "단</title></head>\n" +
                    "   <body>\n" +
                    "       <ul>\n");
            for(int i = 1; i<= 9; i++){
                out.println("<li>"+num + " + " + i + " = "+ (num * i) +"</li>");
            }
            out.println("   </ul>\n" +
                    "       <a href=\"/servlet/test/test05.html\">돌아가기</a>" +
                    "   </body>\n" +
                    "</html>\n");



    }
}
