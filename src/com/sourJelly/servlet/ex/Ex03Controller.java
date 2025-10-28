package com.sourJelly.servlet.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

        // 이름과 생년월일을 전달 받고
        // 이름과 나이를 html로 구성한 페이지

        // 이름과 나이를 데이터로 구성한 페이지


        PrintWriter out = response.getWriter();

        // request로 부터 값을 전달 받는다
        // request 파라미터를 전달 받는다.

        // request로 부터 name 이라는 파라미트 이름으로 값을 꺼내 쓸테니
        // name 이라는 파라미터 이름으로 이름을 전달 해라.
        String name = request.getParameter("name");
        // request로 부터 birthday 이라는 파라미터 이름으로 값을 꺼내 쓸테니
        // birthday 이라는 파라미터 이름으로 20030423 형식으로 생년월일을 전달해라!
        String birthday = request.getParameter("birthday");

        String yearString = birthday.substring(0, 4);
        int year = Integer.parseInt(yearString);

        int age = 2025 - year + 1;

        // 이름과 나이를 응답에 답는다.
        // 항상 규격을 정한다.
        // 데이터를 표현하기위한 !!문자열!! 규격
        // JSON(JAVAScript Object Notation)
        // ["김인규", "유재석", "지석진"] 배열
        // {"name":"김인규", "age":29 } fron 과정 자바 스크립트 중간 거 봐보기

//        out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
        out.println("{\"name\":\""+name+"\", \"age\":"+age+" }");

//        out.println("" +
//                "<html>\n" +
//                "   <head><title>정보</title></head>" +
//                "   <body>\n" +
//                "       <h3> 이름 : " + name + "</h3>\n" +
//                "       <h3> 나이 : " + age + "</h3>\n" +
//                "   </body>\n" +
//                "</html>\n");

    }
}
