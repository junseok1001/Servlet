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
        String mode = request.getParameter("date");


        String result = getMode(mode);


    %>


    <%!
        public String getMode(String mode){
            Date now = new Date();

            if(mode.equals("date")){
                SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 MM월 dd일");
                String nowdate = dateFormatter.format(now);
                return  "오늘 날짜" + nowdate ;
            }else if (mode.equals("time")){
                SimpleDateFormat timeFormatter = new SimpleDateFormat("HH시 mm분 ss초");
                String nowtime = timeFormatter.format(now);
                return "현재 시간" + nowtime;
            }
            return null;
        }
    %>
        <div class="container">
            <div class=" display-2"><%= result %></div>
        </div>

</body>
</html>
