<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>변환 결과</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        String cmString = request.getParameter("cm");
        String[] mode = request.getParameterValues("mode");

//        String result = "";
        StringBuilder sb = new StringBuilder();
        int cm = Integer.parseInt(cmString);
        for(int i = 0 ; i< mode.length; i++){
            if(mode[i].contains("inch")){
                sb.append(cm * 0.3937 + "in <br>\n      ");
            }else if(mode[i].contains("yard")){
                sb.append((cm / 100.0) * 1.0936 + "yd <br>\n        ");
            }else if(mode[i].contains("feet")){
                sb.append((cm / 100.0) * 3.2808 + "ft <br>\n        ");
            }else if(mode[i].contains("meter")){
                sb.append( cm / 100.0 + "m <br>\n");
            }
        }
    %>

    <div class="container">
        <h4>변환 결과</h4>

        <h4> <%= cm%> cm</h4>
        <hr>
        <h4>
            <%= sb%>
        </h4>




    </div>
</body>
</html>
