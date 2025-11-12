package com.sourJelly.database.test.Test03;

import com.sourJelly.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/db/hodangmooMarket/insert")
public class InsertGoodsController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // seller 유저 확인
        String userString = request.getParameter("user");
        int user = Integer.parseInt(userString);

        // 제목 가격 내용 url 내용 가져오기
        String titleString = request.getParameter("title");
        //가격
        String priceString = request.getParameter("price");

        String contentString = request.getParameter("content");

        String urlString = request.getParameter("url");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        if(user == 0 || titleString.equals("") || priceString.equals("") || contentString.equals("") || urlString.equals("")){
            response.sendRedirect("/db/hongdangmooMarket/goodsList.jsp");
        }else {
            int price = Integer.parseInt(priceString);
            String query = "" +
                    "INSERT INTO\n" +
                    "`used_goods`\n" +
                    "(`seller_id`, `title`, `price`, `description`, `image`)\n" +
                    "VALUE \n" +
                    "('" + user + "', '" + titleString + "', '" + price + "', '" + contentString + "'," +
                    " '" + urlString + "');";
            int count = mysqlService.update(query);

            response.sendRedirect("/db/hongdangmooMarket/goodsList.jsp");
        }

    }
}
