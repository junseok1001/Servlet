package com.sourJelly.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // response header
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        //response body
        PrintWriter out = response.getWriter();

        Date nowTime = new Date();

        SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
        String timeString = formatter.format(nowTime);


        out.println("현재시간은 " + timeString + " 입니다.");

    }
}
