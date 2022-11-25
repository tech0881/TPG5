package TPG5.web.auth;

import java.io.IOException;

import TPG5.web.dataObject.dataObject;
import TPG5.web.model.mRegistration;
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
		rpwd = request.getParameter("");
		uaccess = request.getParameter("user_type");
		q1 = request.getParameter("");
		ans1 = request.getParameter("");
		q2 = request.getParameter("");
		ans2 = request.getParameter("");

		dataObject data = new dataObject();
		mRegistration set = new mRegistration();
		set.setemail(email);
		set.setfname(fname);
		set.setlname(lname);
		set.setusrname(uname);
		set.setpassword(pwd);
		set.setrootpass(rpwd);
		set.setuseraccess(uaccess);
		set.setoboSq1(q1);
		set.settxtans1(ans1);
		set.setoboSq2(q2);
		set.setttxtans2(ans2);

		System.out.println("Works!");
		mRegistration set2 = data.member_register(fname, mname, lname, uname, lname, fname, email, uaccess, q1, q2, ans1, ans2);
	}
}
