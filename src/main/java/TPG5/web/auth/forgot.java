package TPG5.web.auth;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class forgot
 */
public class forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		String uname = request.getParameter("u_name");
		String q1 = request.getParameter ("u_sq1");
		String ans1 = request.getParameter ("u_ans1");
		String q2 = request.getParameter ("usq2");
		String ans2 = request.getParameter ("u_ans2");
		
		try {
			String pwd = request.getPassword(uname, q1, ans1, q2, ans2);
			request.setAttribute("u_pwd",pwd);
			RequestDispatcher rd = request.getRequestDispatcher("forgotpwd.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	


}
