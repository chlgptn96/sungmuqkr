<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="./join.js" ></script>
</head>
<body>
<form action="./MemberAddAction.me" class="box" onsubmit="return validate();" method="post">
<h1>Join</h1>
<input type="text" name="email" id="email" placeholder="email">
<input type="password" name="pw" id="pw" placeholder="password">
<input type="password" name="repw" id="repw" placeholder="re password">
<input type="text" name="name" id="name" placeholder="name">
<input type="text" name="phone" id="phone" placeholder="phone">
<input type="submit" value="완료">
<input type="reset" value="다시하기">

</form>

</body>
</html>