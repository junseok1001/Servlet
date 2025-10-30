<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <form method="get" action="/jsp/test/test05.jsp">
            <div class="d-flex align-items-end">
                <input name="cm" type="text"><label>cm</label>
            </div>
            <div class="d-flex">
                <label><input type="checkbox" name="mode" value="inch">인치</label>
                <label><input type="checkbox" name="mode" value="yard">야드</label>
                <label><input type="checkbox" name="mode" value="feet">피트</label>
                <label><input type="checkbox" name="mode" value="meter">미터</label>
            </div>

            <button class="btn btn-success" type="submit">변환</button>
        </form>

    </div>
</body>
</html>
