<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userID= request.getParameter("userID");
String userPW= request.getParameter("userPW");
String loginCheck= request.getParameter("loginCheck");
if(loginCheck.equals("user")){
%>
<jsp:forward page="umain.jsp">
<jsp:param value='<%=URLEncoder.encode("전고객","UTF-8") %>' name="userName"/></jsp:forward>
<%}else{%>
<jsp:forward page="mmain.jsp">
<jsp:param value='<%=URLEncoder.encode("성관리","UTF-8") %>' name="userName"/></jsp:forward>

<% }%>
</body>
</html>