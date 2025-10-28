package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {

    private final Map<String, String> userMap =  new HashMap<String, String>() {
        {
            put("id", "hagulu");
            put("password", "asdf");
            put("name", "김인규");
        }
    };

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        String UserId = userMap.get("id");
        String UserPassword = userMap.get("password");
        String UserName = userMap.get("name");
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();


        out.println("" +
                "<html>\n" +
                "   <head><title>로그인</title></head>\n" +
                "   <body>\n ");

        if(!UserId.equals(id)  ){
            out.println("       <h3>id가 일치하지 않습니다.</h3>");
        }else if(!UserPassword.equals(password)){
            out.println("       <h3>password 가 일치하지 않습니다.</h3>");
        }else{
            out.println("       <h1>"+ UserName + "님 환영합니다</h2>");
        }


        out.println("   </body>\n" +
                "</html>");



    }
}
