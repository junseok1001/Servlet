package com.sourJelly.database.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {

    // 서블릿 만들기
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        // used_goods 테이블의 모든 행 조회 해서
        // 적당한 규격의 문자열로 response에 담는다.


        try {
            // database 서버 접속
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            //접속 정보준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/jun_study";
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            // connection 객체를 리턴하는거라 connection 객체 만들기
            Connection connection =  DriverManager.getConnection(url, username, password);

            //쿼리 수행
            String query = "SELECT * FROM `used_goods`;";
            Statement statement = connection.createStatement();

            ResultSet resultSet =  statement.executeQuery(query);

            while(resultSet.next()){

                // 제목(title) , 가격(price), 설명(description)
                String title = resultSet.getString("title");
                int price = resultSet.getInt("price");
                String description = resultSet.getString("description");

                out.println("제목 : " + title + " 가격 : " + price + "설명 : " + description);

            }
            statement.close();

//            query = "INSERT INTO `used_goods`\n" +
//                    "(`seller_id`, `title`, `price`, `description`)\n" +
//                    "VALUE \n" +
//                    "(3, '고양이 간식 팝니다', 5000, '저희 고양이가 입맛이 까다로워서 안먹어요 ㅠㅠ');";
//
//            statement = connection.createStatement();
//
////            이거는 select 할때만 쓰이는 쿼리
////            statement.executeQuery();
//
//            // INSERT , UPEATE , DELETE
//            // 실행된 행의 개수 return
//             int count = statement.executeUpdate(query);
//
//             out.println("저장된 행 : " + count);
//             statement.close();


            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
