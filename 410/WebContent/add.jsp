<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%!ArrayList<String> list = new ArrayList<String>(); %>
<%

request.setCharacterEncoding("UTF-8");
String pro= request.getParameter("pro");
list.add(pro);
session.setAttribute("pro", list);

out.println("<script>alert(\""+pro+"\"+'가 추가되었습니다');history.back();</script>");


%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=pro %>
</body>
</html>