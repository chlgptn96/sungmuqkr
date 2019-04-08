
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>계산기</h2>
<form method ="post" action="kei2">
<input type = "text" name = "1num"  >
<select name="enzan">
    <option value="+">+</option>
    <option value="-">-</option>
    <option value="*">x</option>
    <option value="/">/</option>
</select>
<input type = "text" name ="2num" >
<input type = "submit" = name ="kakunin" value="계산" >
<input type = "reset" value = "다시입력">
</form>
</body>
</html>
