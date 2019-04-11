<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
document.cookie= "test=ok.";</script>
<body>
<form action="req.jsp" method="get">
<table border="1">

<tr>
<td>이름</td><td><input type="text" name="name"></td>

</tr>
<tr>
<td>직업</td><td><select name="job">
<option value="전문직">전문직</option>
<option value="알바직">알바직</option>
<option value="노동직">노동직</option>
</select>

</td>
</tr>
<tr><td>관심분야</td>
<td><input type="checkbox" name="hobby" value="정치">정치
<input type="checkbox" name="hobby" value="사회">사회
<input type="checkbox" name="hobby" value="정보통신">정보통신
</td>

</tr>
<tr>
<td align="center"><input type="submit" value="확인"> <input type="reset" value="취소">   </td>
</tr>
</table>

</form>
</body>
</html>