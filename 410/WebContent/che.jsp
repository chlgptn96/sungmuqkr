<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
out.println(session.getAttribute("productlist"));%>

<form action="setpro.jsp">
<input type="submit" value="돌아가기">
</form>
</body>
</html>