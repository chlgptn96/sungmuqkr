<% pageContext.setAttribute("num1", 10); %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${ pageScope.num1 } <br>
${ requestScope.num2 } <br>
 ${ sessionScope.num3 } <br> 
 ${ applicationScope.num4 } <br> 
 <hr> ${ num1 } 
 <br> ${ num2 } 
 <br> ${ num3 }
  <br> ${ num4 } <br>
<a href="uu.jsp">ㄱㄱ</a>


</body>
</html>