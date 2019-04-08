package kk;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class kei2
 */
@WebServlet("/kei2")

public class ki extends HttpServlet {
	public double ii(int num1,int num2,String i) {
		double k=0;
		   if(i.equals("+")) {
			     k = num1+num2;
			    
			  }else if(i.equals("-")) {
				   k = num1-num2;
			     
			  }else if(i.equals("*")) {
				  k = num1*num2;
			     
			  }else if(i.equals("/")) {
				  k = num1/(double)num2;
			    
			  }
		return k;
		
	}
 private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ki() {
        super();
        // TODO Auto-generated constructor stub
    }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.getWriter().append("Served at: ").append(request.getContextPath());
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  response.setContentType("text/html; charset=EUC-KR");
  String num3 = request.getParameter("1num");
  String num4 = request.getParameter("2num");
  int num1 = Integer.parseInt(num3);
  int num2 = Integer.parseInt(num4);
  String enzan = request.getParameter("enzan");
  PrintWriter out = response.getWriter();
  out.printf(num1+enzan+num2+"=");
  
  out.print(ii(num1,num2,enzan));
  
 
}
  
  
}
