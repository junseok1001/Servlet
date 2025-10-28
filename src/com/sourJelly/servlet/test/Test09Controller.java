package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String text = request.getParameter("text");

        out.println("" +
                "<html>\n" +
                "   <head><title>자기소개</title></head>\n" +
                "   <body>");
        out.println("       <h2>"+ name + "님 지원이 완료 되었습니다.</h2>\n" +
                "       <hr>\n" +
                "       <div> 지원내용</div>\n" +
                "       <div>" + text + "</div>\n" );

        out.println("" +
                "   </body>\n" +
                "</html>");
    }
}
