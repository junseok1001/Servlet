<%@ page import="com.sourJelly.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>물건올리기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    MysqlService mysqlService = MysqlService.getInstance();

    mysqlService.connect();

    List<Map<String, Object>> userList =  mysqlService.select("SELECT * FROM `seller`");

    mysqlService.disconnect();
%>

<div id="wrap">
    <header class=" d-flex justify-content-center align-items-center">
        <div class="logo display-4 text-white ">HONG당무 마켓</div>
    </header>
    <nav class="main-menu">
        <ul class="nav nav-fill font-weight-bold">
            <li class="nav-item"><a href="/db/hongdangmooMarket/goodsList.jsp" class="nav-link text-white ">리스트</a></li>
            <li class="nav-item"><a href="/db/hongdangmooMarket/Insertgoods.jsp" class="nav-link text-white">물건올리기</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-white">마이페이지</a></li>
        </ul>
    </nav>
    <section class="main-content ">
        <article class="contents d-flex flex-wrap">
            <div class="insert p-2">
                <div class=" display-4 pt-3">물건 올리기</div>
                <form method="get" action="/db/hodangmooMarket/insert">
                <div class="d-flex justify-content-between mt-3">
                    <select id="selectId" class="form-control col-2" name="user">
                        <option value="0">--아이디를 선택하세요--</option>
                        <% for(Map<String, Object> user : userList){ %>
                        <option value="<%= user.get("id")%>"><%= user.get("nickname")%></option>
                        <% } %>
                    </select>
                    <input id="title" class="form-control col-6" placeholder="제목" type="text" name="title">
                    <div class="input-group mb-3 col-3">
                        <input id="price" type="text" class="form-control" placeholder="가격" name="price">
                        <div class="input-group-append">
                            <span class="input-group-text">원</span>
                        </div>
                    </div>
                </div>
                <div>
                    <textarea id="content" class="form-control" rows="5" cols="100" name="content"></textarea>
                </div>
                <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text font-weight-bold">이미지 url</span>
                    </div>
                    <input id="url" type="text" class="form-control" name="url" >
                </div>
                <button id="confirm-btn" class="btn w-100 btn-secondary" type="submit">저장</button>
                </form>
            </div>
        </article>
    </section>
    <footer class="copyright d-flex justify-content-center align-items-center">
        <div class="text-secondary">Copyright 2025. HONG All Rights Reserved.</div>
    </footer>
</div>


<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>
<script>
    $("#confirm-btn").on("click",function(){

        if($("#selectId").val() == 0){
            alert("판매자를 선택하세요");
            return;
        }

        if($("#title").val() == null || $("#title").val() === ""){
            alert("제목을 무조건 입력해야합니다.");
            return;
        }

        if($("#price").val() == null || $("#price").val() === ""){
            alert("가격은 무조건 입력해야합니다.");
            return;
        }

        if($("#content").val() == null || $("#content").val() === ""){
            alert("내용을 입력하세요");
            return;
        }

        if($("#url").val() == null || $("#url").val() === ""){
            alert("사진 한장은 있어야합니다.");
            return;
        }

    });

</script>

</body>
</html>
