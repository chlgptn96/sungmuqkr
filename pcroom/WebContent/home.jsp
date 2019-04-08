<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<% response.setCharacterEncoding("EUC-KR");
String id= request.getParameter("id");

%>
<%
//if
%>
</head>
<body>
<%= id %> 님 안녕하세요
<form action="admin" method="get">
<input type="button" value="회원가입" onclick="rkdlq.jsp"><br>
<select name="game">
<option value="lol" >롤</option>
<option value="계산기" >계산기</option>
<option value="catia">카티아 </option>

</select><br>
<input type="submit" value="게임 실행"><br>
<ol>
<li><a href="http://www.naver.com" target="_blank">네이버</a> </li>
<li><a href="http://www.daum.net" target="_blank">다음  </li>
<li><a href="http://www.google.com" target="_blank">구글</li>
</ol>

</form>
</body>
</html>