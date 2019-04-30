<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="net/member/join.js" type="text/javascript"></script>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./MemberAddAction.me" class="box" onsubmit="return validate();">
<h1>Join</h1>
<input type="text" name="email" placeholder="email">
<input type="password" name="pw" placeholder="password">
<input type="password" name="repw" placeholder="re password">
<input type="text" name="name" placeholder="name">
<input type="text" name="phone" placeholder="phone">
<input type="submit" value="완료">
<input type="reset" value="다시하기">

</form>
</body>
</html>