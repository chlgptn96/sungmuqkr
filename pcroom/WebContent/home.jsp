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
<%= id %> �� �ȳ��ϼ���
<form action="admin" method="get">
<input type="button" value="ȸ������" onclick="rkdlq.jsp"><br>
<select name="game">
<option value="lol" >��</option>
<option value="����" >����</option>
<option value="catia">īƼ�� </option>

</select><br>
<input type="submit" value="���� ����"><br>
<ol>
<li><a href="http://www.naver.com" target="_blank">���̹�</a> </li>
<li><a href="http://www.daum.net" target="_blank">����  </li>
<li><a href="http://www.google.com" target="_blank">����</li>
</ol>

</form>
</body>
</html>