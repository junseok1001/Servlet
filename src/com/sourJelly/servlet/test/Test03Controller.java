package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
        String nowDate = formatter.format(now);

        out.println("" +
                "<html>\n" +
                "   <head><title>URL mapping (annontation1) </title></head>\n" +
                "   <body>\n" +
                "       <h2>[단독]고양이가 야옹해</h2>\n" +
                "       <div>기사 입력 시간 : " + nowDate + "</div>\n" +
                "       <hr>\n" +
                "       <h4>끝</h4>\n" +
                "   </body>\n" +
                "</html>");

    }
}
