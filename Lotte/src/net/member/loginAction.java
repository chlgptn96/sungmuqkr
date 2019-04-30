package net.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.DB.MemberBean;
import net.DB.MemberDAO;


public class loginAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberDAO memberdao = new MemberDAO();
		MemberBean memberdata = new MemberBean();
		ActionForward forward = new ActionForward();
		boolean result = false;
		try {
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			memberdata.setEmail(email);
			memberdata.setPw(pw);
			memberdao.memberlogin(memberdata);
			result = memberdao.memberlogin(memberdata);
			if (result == false) {
				System.out.println("�Խ��� ��� ����");
				forward.setRedirect(true);
				forward.setPath("./login.me");
				
			} else {
				forward.setRedirect(true);
				forward.setPath("./BoardList.bo");
				String name= memberdata.getName();
				session.setAttribute("name", name);
			}
			return forward;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
