<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>결과</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        String kilogramString  = request.getParameter("kg");
        String centimeterString = request.getParameter("cm");
        int cm = Integer.parseInt(centimeterString);
        int kg = Integer.parseInt(kilogramString);
        String result = "";
        double BMI = kg / ((cm / 100.0) * (cm / 100.0));

        if(BMI < 18.5){
            result="저체중";
        }else if(BMI < 25){
            result="정상";
        }else if (BMI < 30){
            result = "과체중";
        }else {
            result = "비만";
        }
    %>




    <div class="container">
        <h3 >BMI 측정 결과</h3>
        <div class="display-4">당신은 <span class="text-info"><%= result%></span> 입니다.</div>
        <div class="small">BMI 수치 : <%= BMI%></div>
    </div>

</body>
</html>
