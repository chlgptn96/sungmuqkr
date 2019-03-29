<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action=local.jsp>
<h7>검색 엔진 정보 페이지</h7>
<h3>검색 엔진을 선택하시오</h3>
 <select name="local">
 <option value="https://www.naver.com/">네이버</option>
 <option value="https://www.daum.net/">다음</option>
 <option value="https://www.google.com">구글</option><br>
 </select>

 <input type="submit" value="확인" name="name">
 </form>
</body>
</html>