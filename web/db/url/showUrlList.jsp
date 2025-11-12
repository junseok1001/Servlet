<%@ page import="com.sourJelly.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>url 목록 보여주기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        List<Map<String, Object>> urlList = mysqlService.select("SELECT * FROM `url`;");
    %>

    <div class="container">
        <table class="table text-center">
            <thead>
                <tr>
                    <th>사이트</th>
                    <th>사이트 주소</th>
                    <th>삭제하기</th>
                </tr>
            </thead>
            <tbody>
                <%for(Map<String, Object> url : urlList){%>
                <tr>
                    <td><%=url.get("name")%></td>
                    <td><a href="<%= url.get("url")%>" target="_blank"><%= url.get("url")%></a></td>
                    <td><a class="btn btn-danger btn-sm" href="/db/url/functionDelete?remove=<%=url.get("id")%>">삭제하기</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <div class="text-left"><a href="/db/url/InsertUrl.jsp">즐겨찾기추가</a></div>
    </div>



</body>
</html>
