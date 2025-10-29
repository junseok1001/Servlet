<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP</title>
</head>
<body>
    <h3>기본 JSP 문법</h3>

    <!-- html 주석 -->
    <!-- html 응답된 페이지에 남는다. -->
    <%-- JSP 주석   --%>
    <%-- 서버에서 구동을 설명하는거기 때문에 서버에서 구동하고 주석은 사라지고 응답해준다.   --%>

    <%-- 1부터 50까지의 합 구해서 h3 태그로 보여주기    --%>

    <%
        int sum = 0;
        for(int i = 1; i <=50; i++){
            sum += i;
        }
    %>

    <h3>합 : <%= sum %></h3>

    <input type="text" value="<%= sum %>">

    <%-- 표현식은 어느 태그든, 어느 위치든 들어갈수 있다.    --%>
    <h4><%= sum * 3  %></h4>

    <h3>리스트 다루기</h3>

    <%
        List<String> animalList = new ArrayList<>();

        animalList.add("고양이");
        animalList.add("강아지");
    %>

    <ul>
        <li><%= animalList.get(0) %></li>
        <li><%= animalList.get(1) %></li>
    </ul>

    <h3>매서드 만들기</h3>

    <%!
        public String getHelloWorld(){
            return "Hello World!!!";
        }
    %>

    <%
        String message = getHelloWorld();
    %>

    <h4><%= message %></h4>
    <h4><%= getHelloWorld() %></h4>

</body>
</html>
