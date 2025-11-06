package com.sourJelly.database.test.Test02;

import com.sourJelly.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/db/url/functionInsert")
public class Test02ControllerInsert extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String name = request.getParameter("name");
        String url = request.getParameter("url");
        String idString = request.getParameter("remove");



        String query = "INSERT INTO `url`\n" +
                "(`name`, `url`)\n" +
                "VALUE\n" +
                "('"+ name +"', '"+ url + "');";

        int count = mysqlService.update(query);


        response.sendRedirect("/db/url/showUrlList.jsp");

        mysqlService.disconnect();





    }
}
