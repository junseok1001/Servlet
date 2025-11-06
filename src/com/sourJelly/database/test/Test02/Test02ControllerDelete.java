package com.sourJelly.database.test.Test02;

import com.sourJelly.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/db/url/functionDelete")
public class Test02ControllerDelete extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String idString = request.getParameter("remove");

        int id = Integer.parseInt(idString);
        String query = "DELETE FROM `url`\n" +
                "WHERE `id`="+ id +";";
         int count = mysqlService.update(query);
         response.sendRedirect("/db/url/showUrlList.jsp");

    }


}
