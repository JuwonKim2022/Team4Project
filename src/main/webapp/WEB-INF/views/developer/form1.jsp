<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form1</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/testCmd" method="post">
ID : <input type="text" id = "id" name = "id" value="">
이름 : <input type="text" id = "name" name = "name" value="">
MAIL: <input type="text" id = "email" name = "email" value="">
<input type="submit" value="로그인">

</form>

</body>
</html>