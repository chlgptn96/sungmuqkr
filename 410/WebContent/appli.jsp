<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
1. �������� : <%= application.getServerInfo() %><br>
2. ���� api ��������: <%= application.getMajorVersion()+"."+application.getMinorVersion() %><br>
3. appli.jsp ������ ���� ��� : <%= application.getRealPath("appli.jsp") %><br>
setAttribute �� username ������ ȫ�浿 ����<br>
<% application.setAttribute("username", "Ȧ�浿");
application.log("username=Ȧ�浿");
application.setAttribute("count",1);%>
<a href="re.jsp">Ȯ��</a>
</body>
</html>