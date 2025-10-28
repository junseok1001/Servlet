package com.sourJelly.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");


        String search = request.getParameter("search");

        PrintWriter out = response.getWriter();
        List<String> list = new ArrayList<>(Arrays.asList(
                "강남역 최고 맛집 소개 합니다.",
                "오늘 기분 좋은 일이 있었네요.",
                "역시 맛집 데이트가 제일 좋네요.",
                "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
                "자축 저 오늘 생일 이에요."
        ));

        out.println("" +
                "<html>\n" +
                "   <head><title>검색결과</title></head>\n" +
                "   <body>\n");

        for(String string : list){
            if(string.contains(search)){
                out.println("       <div>"+ string.replace(search, "<b>"+ search+"</b>") + "</div>\n" +
                        "       <hr>\n");
            }
        }


        out.println("" +
                "   </body>\n" +
                "</html>\n");

    }
}
