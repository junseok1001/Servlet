<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%

        Date now = new Date();

        if(request.getParameter("date").equals("date")){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
            String nowdate = formatter.format(now);
        }

    %>

        <div class="container">
            <div class=" display-2">오늘 날짜 2025년 10월 29일</div>
        </div>

</body>
</html>
