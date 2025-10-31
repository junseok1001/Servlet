<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>메뉴 검색</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h4>메뉴 검색</h4>
        <form method="get" action="/jsp/test/test07.jsp">
            <div class="d-flex align-items-center">
                <input class="form-control col-3 mr-2" type="text" name="menu" >
                <labe><input class="" type="checkbox" name="filter"  >별점 4점이하 제외</labe>
            </div>
            <button class="btn btn-success mt-2" type="submit">검색</button>
        </form>

    </div>

</body>
</html>
