<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="addm.jsp">
<jsp:useBean id="member" class="ch09.MemberBean"></jsp:useBean>

<table>
<tr>
<td>이름</td>
<td><input type="text" name="name" size="20"></td>
</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="userid" size="20"></td>
</tr>
<tr>
<td>별명</td>
<td><input type="text" name="nickname" size="20"></td>
</tr>
<tr>
<td>비번</td>
<td><input type="text" name="pwd" size="20"></td>
</tr>
<tr>
<td>이메일</td>
<td><input type="text" name="email" size="20"></td>
</tr>
<tr>
<td>전번</td>
<td><input type="text" name="phone" size="20"></td>
</tr>
<tr>

<td><input type="submit" value="확인"></td>
<td><input type="reset" value="취소"></td>
</tr>




</table>
</form>
</body>
</html>