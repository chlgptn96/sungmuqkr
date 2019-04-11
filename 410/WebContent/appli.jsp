<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
1. 서버정보 : <%= application.getServerInfo() %><br>
2. 서블릿 api 서버정보: <%= application.getMajorVersion()+"."+application.getMinorVersion() %><br>
3. appli.jsp 파일의 실제 경로 : <%= application.getRealPath("appli.jsp") %><br>
setAttribute 로 username 변수에 홍길동 설정<br>
<% application.setAttribute("username", "홀길동");
application.log("username=홀길동");
application.setAttribute("count",1);%>
<a href="re.jsp">확인</a>
</body>
</html>