<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
      <%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
String sql = "select * from member where id=?";
Connection conn= null;
ResultSet rs   = null;
PreparedStatement pstmt =null;
try { 
   Context init = new InitialContext();
    DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    conn = ds.getConnection();
    pstmt= conn.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("id"));
    rs = pstmt.executeQuery();
    rs.next();
    
}catch (SQLException e) { // ����ó��
    out.println("err:"+e.toString());
} 
%>


<table width="700" height="400" border="2"  align="center" cellspacing="0">

       <tr height="10" align="center">

           <td colspan="2" style="background:pink;" ><font color=white font size="4"><b>ȸ���⺻����</b></font></td>

       </tr>

       <tr>

           <td><b>���̵�:</b></td>

           <td><%=rs.getString("id") %></td>

       </tr>

       <tr>

           <td><b>���:</b></td>

           <td><%=rs.getString("pw") %></td>

       </tr>

       <tr>

           <td><b>�����ּ�:</b></td>

           <td><%=rs.getString("email") %></td>

       </tr>

       <tr>

           <td><b>�̸�:</b></td>

           <td><%=rs.getString("name") %></td>

       </tr>

       <tr  height="10" align="center">

           <td colspan="2" style="background:pink;"><font color=white font size="4"><b>��������</b></font></td>

       </tr>

       <tr>

           <td><b>�ֹε�Ϲ�ȣ:</td>

           <td><%=rs.getString("num1") %> </td>

       </tr>

       <tr>

           <td><b>����:</b></td>

           <td>
   <%=rs.getString("years") %>
   <%=rs.getString("month") %>
   <%=rs.getString("day") %>

           </td>

       </tr>

       <tr>

           <td><b>���ɺо�:</b></td>

           <td>

             <%=rs.getString("inter") %>

           </td>

       </tr>

       <tr>

           <td>

               <b>�ڱ�Ұ�:</b>

           </td>
<td>
           <%=rs.getString("self") %>
</td>
       </tr>

   </table>

</body>
</html>