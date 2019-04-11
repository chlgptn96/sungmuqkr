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
if(session.isNew()){
	out.println("<script>alert('세션이 해제되어 다시설정합니다')</script>");
	session.setAttribute("login", "길동이");
}
%>
#<%= session.getAttribute("login") %>님환영<br>
1.세션 ID : <%=session.getId() %><br>
2.세션 유지시간 :<%=session.getMaxInactiveInterval() %><br>

</body>
</html>