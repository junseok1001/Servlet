<%@ page import="com.sourJelly.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    MysqlService mysqlService = MysqlService.getInstance();

    mysqlService.connect();
    List<Map<String, Object>> usedGoods = mysqlService.select("SELECT * FROM `seller` JOIN `used_goods` ON seller.id = used_goods.seller_id");

    mysqlService.disconnect();
%>

    <div id="wrap">
        <header class=" d-flex justify-content-center align-items-center">
            <div class="logo display-4 text-white ">HONG당무 마켓</div>
        </header>
        <nav class="main-menu">
            <ul class="nav nav-fill font-weight-bold">
                <li class="nav-item"><a class="nav-link text-white" href="/db/hongdangmooMarket/goodsList.jsp">리스트</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="/db/hongdangmooMarket/Insertgoods.jsp">물건올리기</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">마이페이지</a></li>
            </ul>
        </nav>
        <section class="main-content ">
            <article class="contents d-flex flex-wrap justify-content-around">
                <% for(Map<String, Object> goods : usedGoods){

                %>
                <div class="items my-2 p-3 ">
                    <% if(goods.get("image")== null){ %>
                <div class="image_item d-flex justify-content-center align-items-center text-secondary ">이미지 없음</div>
                    <% }else{ %>
                    <div><img width="340" height="150" src="<%=goods.get("image")%>"></div>
                    <% } %>
                    <div class="title mt-2"><%= goods.get("title")%></div>
                    <div class="text-secondary small"> <%= goods.get("price")%></div>
                    <div class="author"><%=goods.get("nickname") %></div>
                </div>
                <% } %>
            </article>
        </section>
        <footer class="copyright d-flex justify-content-center align-items-center">
            <div class="text-secondary">Copyright 2025. HONG All Rights Reserved.</div>
        </footer>
    </div>

</body>
</html>
