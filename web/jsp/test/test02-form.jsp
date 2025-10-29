
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>BMI 검색</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h2>체격 조건 입력</h2>

            <form method="get" action="/jsp/test/test02.jsp">
                <div class="d-flex align-items-end ">
                    <input class="form-control col-3 mx-1" type="text" name="cm"><div class="small ">cm</div>
                    <input class="form-control col-3 mx-1" type="text" name="kg"><div class="small ">kg</div>
                    <button class="btn btn-info mx-3" type="submit">입력</button>
                </div>
            </form>
    </div>
</body>
</html>
