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
	out.println("<script>alert('������ �����Ǿ� �ٽü����մϴ�')</script>");
	session.setAttribute("login", "�浿��");
}
%>
#<%= session.getAttribute("login") %>��ȯ��<br>
1.���� ID : <%=session.getId() %><br>
2.���� �����ð� :<%=session.getMaxInactiveInterval() %><br>

</body>
</html>