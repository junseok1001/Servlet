<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>사칙연산 결과</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        String number1String = request.getParameter("number1");
        String number2String = request.getParameter("number2");
        String sign = request.getParameter("sign");

        int number1 = Integer.parseInt(number1String);
        int number2 = Integer.parseInt(number2String);

        int result = 0;
        if(sign.equals("+")){
            result = number1 + number2;
        }else if(sign.equals("-")){
            result = number1 - number2;
        }else if(sign.equals("X")){
            result = number1 * number2;
        }else if(sign.equals("÷")){
            result= number1 / number2;
        }

    %>

    <div class="container">
        <h3>계산결과</h3>

        <div clas="display-3"><%=number1String + " " +  sign + " " + number2String %> = <span class="text-primary"><%= (double)result%></span></div>
    </div>


</body>
</html>
