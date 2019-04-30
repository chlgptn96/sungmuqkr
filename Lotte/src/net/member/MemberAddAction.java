package net.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.DB.MemberDAO;
import net.DB.MemberBean;

public class MemberAddAction implements Action {
	String address = "";
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO memberdao=new MemberDAO();
	   	MemberBean memberdata=new MemberBean();
	   	ActionForward forward=new ActionForward();
	   	boolean result=false;
   		
   			try{
   				memberdata.setPhone(request.getParameter("phone"));
   				memberdata.setAddress(address);
   				memberdata.setPw(request.getParameter("pw"));
   				memberdata.setEmail(request.getParameter("email"));
   				memberdata.setName(request.getParameter("name"));
   				
   		   		result=memberdao.memberInsert(memberdata);
   		   	if(result==false){
	   			System.out.println("�Խ��� ��� ����");
	   			return null;
	   		}
	   		System.out.println("�Խ��� ��� �Ϸ�");
   		   	forward.setRedirect(true);
	   		forward.setPath("./login.me");
	   		
	   		return forward;
   			}catch(Exception ex){
   	   			ex.printStackTrace();
   	   		}
		return null;
	}

}
