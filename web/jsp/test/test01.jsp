<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp 스크립트 요소</title>
</head>
<body>


    <h3>1. 점수들의 평균 구하기</h3>
    <%
     int[] scores = {80, 90, 100, 95, 80};

     double average = 0;
     int sum = 0;
     for(int i = 0; i<scores.length; i++){
         sum += scores[i];
         average = (double) sum / scores.length;
     }
    %>

    <div>점수 평균은 <%= average %>입니다.</div>

    <h3>2. 채점 결과</h3>
    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

        sum = 0;
        for(int i = 0; i < scoreList.size(); i++){
            if(scoreList.get(i).equals("O")){
                sum += 10;
            }
        }
    %>

    <div>채점 결과는 <%= sum%> 입니다.</div>

    <h3>3. 1부터 N까지의 합계를 구하는 함수</h3>

    <%!
       public int getSumList(int num){
           int sum = 0;
           for(int i = 1; i <= num; i++){
               sum += i;
           }
           return sum;
       }
    %>

    <div> 1에서 50까지의 합은 <%= getSumList(50)%> </div>

    <h3>4. 나이 구하기</h3>
    <%
        String birthDay = "20010820";
        int age = Integer.parseInt(birthDay.substring(0, 4));

        double qwer = 35.123456;
        

    %>
    <div>20010820의 나이는 <%= age %>살 입니다.</div>



</body>
</html>
