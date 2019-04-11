<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%
application.setAttribute("count2", "application.getAttribute('count')++");
int i = Integer.parseInt(application.getAttribute("count").toString())+1;
application.setAttribute("count", i);

%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
username 에 설정된 값은 : <%=application.getAttribute("username") %><br>
count: <%=application.getAttribute("count")  %>

</body>
</html>