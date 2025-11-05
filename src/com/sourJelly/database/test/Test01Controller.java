package com.sourJelly.database.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {



        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();

        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            String url = "jdbc:mysql://localhost:3306/jun_study";
            String username = "root";
            String password = "root";


            Connection connection = DriverManager.getConnection(url, username, password);

//            String query = "INSERT INTO `real_estate`\n" +
//                    "(`realtor_id`, `address`, `area`, `type`, `price`)\n" +
//                    "VALUE\n" +
//                    "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//
//            Statement statement = connection.createStatement();
//
//
//            int count = statement.executeUpdate(query);
//            out.println(count + ": 수행된 쿼리 수");

            String query = "SELECT `address`, `area`, `type` FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query); // resultSet 은 데이터베이스의 모든행을 가지고있지 않고 한행 가지고 있다가 없애고 다음행 가져오고 이런형태임.

            while(resultSet.next()){

                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");


                // 잊지말기
                // response body 클라이언트에게 전달할 데이터를 문자열로 만들어 보내는 중이다 현재 **
                out.println("매물주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);

            }

            statement.close();
            connection.close();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
