<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>곡정보</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    int id = 0;
    if(request.getParameter("id")== null){
         id = 0;
    }else{
         id = Integer.parseInt(request.getParameter("id"));
    }

    String search = request.getParameter("search");



%>

<div class="container">
    <header class="d-flex">
        <div class="logo col-2 d-flex align-items-center">
            <a class="text-success text-decoration-none text-success" href="/jsp/test/melong/test10.jsp"><h1>Melong</h1></a>
        </div>
        <div class="search col-10 d-flex align-items-center">
            <div class="input-group col-5">
                <input type="text" class="form-control" >
                <div class="input-group-append">
                    <button class="btn btn-success" type="submit">검색</button>
                </div>
            </div>
        </div>
    </header>
    <nav class="main-menu">
        <ul class="nav">
            <li class="nav-items"><a class="nav-link text-dark font-weight-bold" href="#">멜롱챠트</a></li>
            <li class="nav-items"><a class="nav-link text-dark font-weight-bold" href="#">최신음악</a></li>
            <li class="nav-items"><a class="nav-link text-dark font-weight-bold" href="#">장르음악</a></li>
            <li class="nav-items"><a class="nav-link text-dark font-weight-bold" href="#">멜롱DJ</a></li>
            <li class="nav-items"><a class="nav-link text-dark font-weight-bold" href="#">뮤직어워드</a></li>
        </ul>
    </nav>
    <section class="mt-3 p-2" >
        <div class="d-flex border border-success p-3">
            <% for(Map<String, Object> music : musicList) {
                String title = (String)music.get("title");
                if(id == (Integer)music.get("id")|| title.equals(search) ){
            %>
            <img width="200" src="<%= music.get("thumbnail")%>">
            <div class="ml-3">
                <div class="display-4"><%= music.get("title")%></div>
                <div class="font-weight-bold text-success"><%= music.get("singer")%></div>
                <div class="">재생 시간 <span class="font-weight-bold"><%=(Integer)music.get("time") / 60 %> : <%= (Integer)music.get("time") % 60%></span></div>
                <div class="">작곡가  <%= music.get("composer")%></div>
                <div class="">작사가  <%= music.get("lyricist")%></div>
            </div>
            <%  break;}
            } %>
        </div>
        <h4 class="mt-2">곡 목록</h4>
        <table class="table mt-2 text-center font-weight-bold">
            <tbody>
                <tr>가서 정보 없음</tr>
            </tbody>
        </table>
    </section>
    <footer>
        <hr>
        <div class="text-secondary small">Copyright 2025. melong All Rights Reseved.</div>
    </footer>
</div>

</body>
</html>
