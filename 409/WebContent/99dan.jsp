
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<td></td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td>
</tr>
<%
String tr= "<tr>";
String td= "<td>";
String td2="</td>";
String tr2= "</tr>";
String re= "";
int a= 0;
for (int i=2; i<=9;i++){
	re= re+tr;
	for(int j=1; j<=9;j++){
		a= i*j;
		re=re+td+i+"*"+j+"="+a;
	}
	re=re+tr2;
}
%>
<%=re %>

</table>
</body>
</html>