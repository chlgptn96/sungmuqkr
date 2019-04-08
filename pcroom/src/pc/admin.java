package pc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public admin() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("EUC-KR");
		String s = request.getParameter("game");

		if (s != null && s.equals("lol")) {
			try {
				Runtime.getRuntime().exec("C://Riot Games//League of Legends//LeagueClient.exe");
			} catch (Exception ex) {
			}
		} else if (s != null && s.equals("계산기")) {
			try {
				Runtime.getRuntime().exec("C://Windows//System32//calc.exe");
			} catch (Exception ex) {
			}
		} else {
			try {
				Runtime.getRuntime().exec("C://Program Files (x86)//Dassault Systemes//B18//intel_a//code//bin//CATSTART.exe");
			} catch (Exception ex) {
			}

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		if (id.equals("tjdan1") && pw.equals("1503tjdan")) {
			response.sendRedirect("home.jsp");
		} else {

			response.setCharacterEncoding("EUC-KR");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('다시 로그인 해주세요.');");
			writer.println("history.back();");
			writer.println("</script>");
			writer.flush();
			return;

		}
	}

}
