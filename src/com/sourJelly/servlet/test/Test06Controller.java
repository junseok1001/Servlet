package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");


//         {
//              "addtion" :  + num1 + num2,
//              "subtraction" :  + (num1 - num2),
//              "multiplication" : + (num1 * num2),
//              "division" :  + (num1 / num2)
//         }
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));


        PrintWriter out = response.getWriter();
        out.println("         {" +
                "              \"addtion\" :" + (num1 + num2) + "," +
                "              \"subtraction\" :"  + (num1 - num2) + "," +
                "              \"multiplication\" :" + (num1 * num2) +"," +
                "              \"division\" :"  + (num1 / num2)+
                "         }");



    }
}
