<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'Logout'}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Seoul Market</title>
    <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
    <script src="https://kit.fontawesome.com/e4a42c4ca5.js" crossorigin="anonymous"></script>
    <script src="js/main.js" defer></script>
</head>
<body>
  <nav class="navbar">
    <div class="navbar__logo">
      <i class="fa-solid fa-chart-pie"></i>
      <a href="">상권분석</a>
    </div>
    <div class="navbar__menu">
      <li><a href="<c:url value='/'/>">Home</a></li>
      <li><a href="<c:url value='/'/>">지도 분석</a></li>
      <li><a href="<c:url value='/'/>">상권 현황</a></li>
      <li><a href="<c:url value='/board/list'/>">Board</a></li>
      <li><a href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>
      <li><a href="<c:url value='/register/add'/>">Sign in</a></li>
      <li><a href="<c:url value='/'/>">사이트 소개</a></li>
    </div>
    <div class="navbar__search">
      <li><a href=""><i class="fa-brands fa-sistrix"></i></a></li>
      <li><input type="text" placeholder="검색어 입력"></li>
    </div>
    <a href="#" class="navbar__toogleBtn">
      <i class="fa-solid fa-bars"></i>
    </a>
  </nav>
  <div style="text-align:center">
    <h1>This is HOME</h1>
    <h1>This is HOME</h1>
    <h1>This is HOME</h1>
  </div>
</body>
</html>
