<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="iii.jsp">
<jsp:param value="test@naver.com" name="email"/>
<jsp:param value="010-0101-0505" name="tel"/>

</jsp:forward>
박성무
</body>
</html>