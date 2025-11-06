<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>즐겨찾기 주소 입력하기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>

    <div class="container">
        <h3>즐겨찾기 추가</h3>
        <form method="post" action="/db/url/functionInsert">
            <label>사이트명 : </label><input class="form-control col-5" type="text" name="name">
            <label>사이트 주소 : </label><input class="form-control col-8" type="text" name="url">
            <button class="btn btn-success mt-3" type="submit">추가</button>
        </form>
    </div>

</body>
</html>
