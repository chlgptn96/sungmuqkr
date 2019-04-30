package net.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public MemberDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}
	public boolean memberInsert(MemberBean member){
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			
			
			sql= "insert into member values (?,?,?,?,?)";
			
			 pstmt= con.prepareStatement(sql);
			
		       pstmt.setString(1, member.getName());
		       pstmt.setString(2, member.getEmail());
		       pstmt.setString(3, member.getPw());
		       pstmt.setString(4, member.getPhone());
		       pstmt.setString(5, member.getAddress());
		       
		      
			pstmt.executeUpdate();
			
			result=result+1;
			if(result==0) {
			
				return false;
			}
			
			return true;
		}catch(Exception ex){
			System.out.println("boardInsert ���� : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}
	public boolean memberlogin(MemberBean member){
		int num =0;
		String sql="";
		
		int result=0;
		try{
			 sql = "select email,pw from member";
			
		      int f = 0;
		      PreparedStatement stmt = con.prepareStatement(sql);
		      ResultSet rs = stmt.executeQuery();
		      while (rs.next()) {
		         String id1 = rs.getString(1);
		         String pw1 = rs.getString(2);
		         if (id1.equals(member.getEmail()) && pw1.equals(member.getPw())) {
		            f = 1;
		            result=+1;
		            return true;
		         }
		      }
		
		
		if(result==0) {
		
			return false;
		}
		
		
	}catch(Exception ex){
		System.out.println("boardInsert ���� : "+ex);
	}finally{
		if(rs!=null) try{rs.close();}catch(SQLException ex){}
		if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
	}
	return false;
	}
}
