<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>사칙 연산</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h4>사칙연산</h4>

        <form method="get" action="/jsp/test/test04.jsp">
            <div class="d-flex">
                <input class="form-control col-2 mx-1" type="text" name="number1">
                <select class="form-control col-2 mx-1 " name="sign">
                    <option>+</option>
                    <option>-</option>
                    <option>X</option>
                    <option>÷</option>
                </select>
                <input class="form-control col-2 mx-1" type="text" name="number2">
                <button class="btn btn-success" type="submit"> 입력</button>
            </div>
        </form>

    </div>
</body>
</html>
