<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="aaa.jsp">
<jsp:param value="test@test.com" name="email"/>
<jsp:param value="010-0100-0115" name="phone"/>
</jsp:include>
박성무
</body>
</html>