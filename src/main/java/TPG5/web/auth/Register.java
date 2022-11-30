package TPG5.web.auth;

import java.io.IOException;

import TPG5.web.dataObject.dataObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String email, fname, mname, lname, uname, pwd, rpwd, uaccess, q1, ans1, q2, ans2;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		email = request.getParameter("email");
		fname = request.getParameter("fname");
		mname = request.getParameter("mname");
		lname = request.getParameter("lname");
		uname = request.getParameter("username");
		pwd = request.getParameter("password");
		rpwd = request.getParameter("password");
		uaccess = request.getParameter("user_type");
		q1 = request.getParameter("");
		ans1 = request.getParameter("");
		q2 = request.getParameter("");
		ans2 = request.getParameter("");
		
		//Testing
		System.out.println(email);
		System.out.println(fname);
		System.out.println(mname);
		System.out.println(lname);
		System.out.println(uname);
		System.out.println(pwd);
		System.out.println(rpwd);
		System.out.println(uaccess);
		System.out.println(q1);
		System.out.println(ans2);
		System.out.println(q2);
		System.out.println(ans2);

		dataObject data = new dataObject();

		System.out.println("Works!");
		data.member_register(fname, mname, lname, uname, pwd, rpwd, email, uaccess, q1, q2, ans1, ans2);
		response.sendRedirect("auth/login.jsp");
	}
}
