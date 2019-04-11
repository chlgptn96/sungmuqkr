
<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>




<HTML>

<HEAD><TITLE>page_control_end.jsp</TITLE></HEAD>

<BODY>

<center>

<H2>forward action 및 sendRedirect() 결과</H2>

<HR>

 지금 보이는 화면은 page_control_end.jsp 에서 출력한 결과 입니다.

<HR>

이름 : <%= request.getParameter("username") %> <BR>

전화번호 : <%= request.getParameter("tel") %>

</center>

</BODY>

</HTML>
