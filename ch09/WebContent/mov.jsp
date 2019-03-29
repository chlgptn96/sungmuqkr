<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="movi.jsp">
<table>
<tr>
<td>제목</td>
<td><input type="text" name="title" size="20"></td>
</tr>
<tr>
<td>네당</td>
<td><input type="text" name="price" size="20"></td>
</tr>
<tr>
<td>감독</td>
<td><input type="text" name="director" size="20"></td>
</tr>
<tr>
<td>배우</td>
<td><input type="text" name="actor" size="20"></td>
</tr>
<tr>
<td>시놉시스</td>
<td><textarea rows="10" cols="10" name="synopsis"></textarea></td>
</tr>
<tr>
<td>장르</td>
<td><select name="genre">
<option value="액션" >액션</option>
<option value="로맨스" >로맨스</option>
<option value="스릴러" >스릴러</option>
<option value="판타지" >판타지</option>
</select></td>
</tr>
<tr>

<td><input type="submit" value="확인"></td>
<td><input type="reset" value="취소"></td>
</tr>




</table>





</form>

</body>
</html>