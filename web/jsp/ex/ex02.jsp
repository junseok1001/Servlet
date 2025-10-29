<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Method</title>
</head>
<body>

    <%
        // 이름과 생년월일을 전달받고
        // 이름과 나이를 테이블로 구성

        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");

        int year = Integer.parseInt(birthday.substring(0, 4));

        int age = 2025 - year + 1;


    %>

    <h3>정보</h3>

    <table border="1">
        <tr>
            <th>이름</th>
            <td> <%= name %></td>
        </tr>
        <tr>
            <th>나이</th>
            <td><%= age %></td>
        </tr>
    </table>

</body>
</html>
