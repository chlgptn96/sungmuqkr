<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="mo" class="ch09.Mobean"></jsp:useBean>
<jsp:setProperty property="*" name="mo"/>
<table>
<tr>
<td>제목</td>
<td><%=mo.getTitle() %></td>
</tr>
<tr>
<td>네당</td>
<td><%=mo.getPrice() %></td>
</tr>
<tr>
<td>감독</td>
<td><%=mo.getDirector() %></td>
</tr>
<tr>
<td>배우</td>
<td><%=mo.getActor() %></td>
</tr>
<tr>
<td>시놉시스</td>
<td><%=mo.getSynopsis() %></td>
</tr>
<tr>
<td>장르</td>
<td><%=mo.getGenre() %></td>
</tr>





</table>
</body>
</html>