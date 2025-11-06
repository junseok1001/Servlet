package com.sourJelly.database.ex;

import com.sourJelly.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

//        response.setContentType("text/plain");
//
//        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String introduce = request.getParameter("introduce");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();
        String query = "INSERT INTO `new_user`\n" +
                "(`name`, `yyyymmdd`, `email`, `introduce`)\n" +
                "VALUE\n" +
                "('"+ name + "', '"+ birthday + "', '"+ email + "', '"+ introduce + "');";


        int count = mysqlService.update(query);

        mysqlService.disconnect();
//        out.println(query);
//        out.println("수행결과 : " + count);

        // redirect
        // 클라이언트야  내가 너한테 줄 데이터는 없고, list.jsp에 새로 요청해서 그결과를 응답으로 받아라.
        // 응답에 새롭게 요청할 url을 전달.

        response.sendRedirect("/db/user/list.jsp");


    }
}
