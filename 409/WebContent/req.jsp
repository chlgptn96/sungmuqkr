<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%
response.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String job= request.getParameter("job");

%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=name %>
<table border="1">

<tr>
<td>이름</td><td><%=name %></td>

</tr>
<tr>
<td>직업</td><td><%=job %>

</td>
</tr>
<tr><td>관심분야</td>
<td><%
String[] str = request.getParameterValues("hobby");

%>

<%for(int i=0;i<str.length;i++){
%>
<%=str[i] %><br>
<%} %>



</td>

</tr>

</table>
<%
Cookie cookie[]= request.getCookies();
%>
3. <%=cookie[0].getName() %>에 설정된 쿠기값 <%= cookie[0].getValue() %>
</body>
</html>