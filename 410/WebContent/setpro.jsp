<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("UTF-8"); 
String id = request.getParameter("id");

%>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%=request.getParameter("id") %>
${id}님 환영합니다<br>
목록<br>
<form action="add1.jsp">
<select name="pro">
	<option value="사과"> 사과  </option>
	<option value="포도">포도  </option>
	<option value="배">배 </option>
	<option value="딸기">딸기</option>
	<option value="귤">귤</option>
</select>
<input type="submit" value="확인">
</form>
<form action="che.jsp">
<input type="submit" value="장바구니">
</form>
</body>
</html>