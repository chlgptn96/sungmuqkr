
<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>




<HTML>

<HEAD><TITLE>page_control.jsp</TITLE></HEAD>

<BODY>

<H2>forward, sendRedirect 테스트</H2>

<HR>

<form method=post action=2.jsp>

 forward action : <input type=text name=username>

 <input type=submit value="확인">

</form>




<form method=post action=3.jsp>

 response.sendRedirect : <input type=text name=username>

 <input type=submit value="확인">

</form>

</BODY>

</HTML>
