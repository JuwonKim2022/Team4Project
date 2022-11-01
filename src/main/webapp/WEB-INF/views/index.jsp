<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>main</title>
  <script src="https://kit.fontawesome.com/e4a42c4ca5.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <style>
  
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="<c:url value='/'/>">
        <i class="fa-brands fa-freebsd"> market A</i>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
          <li class="nav-item1">
            <a class="nav-link active1" aria-current="page1" href="<c:url value='/board/list'/>">상권 지도</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              커뮤니티
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">공지사항</a></li>
              <li><a class="dropdown-item" href="#">묻고 답하기</a></li>
              <li><a class="dropdown-item" href="<c:url value='/board/list'/>">자유 게시판</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              나의 공간
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">내 정보</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">내 기록</a></li>
              <li><a class="dropdown-item" href="#">북마크</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              사이트 소개
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">사이트 소개</a></li>
              <li><a class="dropdown-item" href="#">참고 사이트</a></li>
              <li><a class="dropdown-item" href="#">사이트맵</a></li>
            </ul>
          </li>
          <li class="nav-item3">
            <a class="nav-link active3" aria-current="page3" href="<c:url value='/login/login'/>">로그인</a>
          </li>
          <li class="nav-item4">
            <a class="nav-link active4" aria-current="page4" href="<c:url value='/register/add'/>">회원가입</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-secondary" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  	<div class="carousel-inner">
    	<div class="carousel-item active">
      	<img src="/resources/img/marketBackground1.jpg" class="d-block w-100" alt="...">
    	</div>
    	<div class="carousel-item">
      	<img src="/resources/img/marketBackground2.jpg" class="d-block w-100" alt="...">
    	</div>
    	<div class="carousel-item">
      	<img src="/resources/img/marketBackground3.jpg" class="d-block w-100" alt="...">
    	</div>
  	</div>
  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    	<span class="visually-hidden">Previous</span>
  	</button>
  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
    	<span class="visually-hidden">Next</span>
  	</button>
	</div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>