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
            // 데이터 베이스를 접속하기위한 규격 (Driver) 사용
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());

            //접속을 위한 정보 준비
            // 서버 주소, 포트 , 데이터베이스 명
            String url = "jdbc:mysql://localhost:3306/jun_study";
            // 데이터베이스 사용자명
            String username = "root";
            // 데이터베이스 비밀번호
            String password = "root";

            // 접속 및 접속 관리 객체 얻어오기
            Connection connection =  DriverManager.getConnection(url, username, password);

            //쿼리를 수행
            String query = "SELECT `address`, `area`, `type` FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next()){

                // adress area type
                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");

                out.println("매물주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
            }
            statement.close();

//            query = "INSERT INTO `real_estate`\n" +
//                    "(`realtor_id`, `address`, `area`, `type`, `price`)\n" +
//                    "VALUE\n" +
//                    "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//            statement = connection.createStatement();
//
//            int count = statement.executeUpdate(query);
//
//            out.println("저장된 행 : " + count);
//            statement.close();

            connection.close();




        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
