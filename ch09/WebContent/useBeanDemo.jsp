<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="ch09.MemberBean"></jsp:useBean>
이름 : <%=member.getName() %> 이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %><br>
<%member.setName("박성무");
member.setUserid("성무");%>
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>

</body>
</html>