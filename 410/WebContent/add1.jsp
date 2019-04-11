<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%
request.setCharacterEncoding("UTF-8");
ArrayList<String> list=(ArrayList)session.getAttribute("productlist");;
String productname = request.getParameter("pro");

if(list==null){
     list = new ArrayList<String>();
     session.setAttribute("productlist",list);
}
list.add(productname);



out.println("<script>alert(\""+productname+"\"+'가 추가되었습니다');history.back();</script>");


%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>