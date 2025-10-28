package com.sourJelly.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test01Controller extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // response header
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/explain");


        // response body
        PrintWriter out = response.getWriter();

        Date now = new Date();

        SimpleDateFormat formmater = new SimpleDateFormat("yyyy년 M월 d일");
        String nowDataString = formmater.format(now);

        out.println("오늘의 날짜는 "+ nowDataString);

    }


}
