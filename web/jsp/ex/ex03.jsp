<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Post Method</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        // 닉네임 전달 받기
        String nickname = request.getParameter("nickname");

        // 좋아하는 동물을 하나 전달 받기
        // 고양이, 강아지, 호랑이

        String animal = request.getParameter("animal");

        // 좋아하는 과일 하나를 전달받기
        // 바나나, 딸기, 복숭아
        String fruit = request.getParameter("fruit");

        // 좋아하는 음식을 모두 전달받기
        // 민트초코, 하와이안피자, 번데기

        String[] foodArray = request.getParameterValues("food");

        // 이 과정을 간단하게 해주는 매서드가 있다. 찾아볼거면 찾아보기
        String foodString = "";
        for(int i = 0; i < foodArray.length; i++){
            foodString += foodArray[i] + " ";
        }
    %>

    <h3><%= nickname %></h3>
    <h3><%= animal %></h3>
    <h3><%= fruit %></h3>
    <h3><%= foodString %></h3>
</body>
</html>
