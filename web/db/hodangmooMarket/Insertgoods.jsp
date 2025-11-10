<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>물건올리기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div id="wrap">
    <header class=" d-flex justify-content-center align-items-center">
        <div class="logo display-4 text-white ">HONG당무 마켓</div>
    </header>
    <nav class="main-menu">
        <ul class="nav nav-fill font-weight-bold">
            <li class="nav-item"><a class="nav-link text-white ">리스트</a></li>
            <li class="nav-item"><a class="nav-link text-white">물건올리기</a></li>
            <li class="nav-item"><a class="nav-link text-white">마이페이지</a></li>
        </ul>
    </nav>
    <section class="main-content ">
        <article class="contents d-flex flex-wrap">
            <div class="insert p-2">
                <div class=" display-4 pt-3">물건 올리기</div>
                <div class="d-flex justify-content-between mt-3">
                    <select class="form-control col-2">
                        <option value="0">아이디를 선택하세요</option>
                        <option value="0">오준석</option>
                        <option value="0">나</option>
                        <option value="0">너</option>
                        <option value="0">우리</option>
                    </select>
                    <input class="form-control col-6" placeholder="제목" type="text">
                    <div class="input-group mb-3 col-3">
                        <input type="text" class="form-control" placeholder="가격">
                        <div class="input-group-append">
                            <span class="input-group-text">원</span>
                        </div>
                    </div>
                </div>
                <div>
                    <textarea class="form-control" rows="5" cols="100"></textarea>
                </div>
                <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text font-weight-bold">이미지 url</span>
                    </div>
                    <input type="text" class="form-control" id="basic-url">
                </div>
                <button class="boton w-100 btn" type="button">저장</button>
            </div>
        </article>
    </section>
    <footer class="copyright d-flex justify-content-center align-items-center">
        <div class="text-secondary">Copyright 2025. HONG All Rights Reserved.</div>
    </footer>
</div>

</body>
</html>
