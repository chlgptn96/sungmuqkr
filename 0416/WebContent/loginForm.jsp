<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

.entry{
   width : 846px;
   height :648px;  
   overflow: hidden; 
   background-image : url('login.jpg'); 
   margin-top: 50;
   }
h1.title{
   max-width : 100%;
   height : auto;
   text-shadow : 1px 1px 2px #666666;
   color : black; 
   padding-top : 300px; 
   text-align : center;
}
table {

position: absolute; top: 300px; left: 220px; right: 30px;
text-align:center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="entry">
<form action="loginProcess.jsp" method="post">
<table class="table">

<tr>
<td>아이디</td>
<td><input type="text" name="id"></td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" name="pw"></td>
</tr>

<tr>
<td colspan="2">
<input type="submit" value="로그인"><br>
<a href="joinForm.jsp">회원가입</a></td>
</tr>
</table>
</form>
</div>
</body>
</html>