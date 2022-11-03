package TPG5.web.auth;
import java.io.IOException;
import java.util.ArrayList;
import TPG5.web.model.mRegistration;
import TPG5.web.dataObject.dataObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class mlogin extends HttpServlet {
	mRegistration mLoginFields = new mRegistration();
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String username= req.getParameter("txtusr_name");
		String password= req.getParameter("txtusr_pwd");
		mLoginFields.setusrname(username);
		mLoginFields.setpassword(password);
		ArrayList user_login = new dataObject().member_register(username, password);
		if(user_login.size()>0)
		{
			String user_fname = user_login.get(0).toString();
			String user_lname = user_login.get(1).toString();
			String user_laccess = user_login.get(2).toString();
			HttpSession session = req.getSession();
			
			session.setAttribute("usr_fname", usr_fname);
			session.setAttribute("usr_lname", usr_lname);
			session.setAttribute("usr_laccess", usr_laccess);
			scrapeDataObj update_scrape_tbl = new scrapeDataObj();
			update_scrape_tbl.get_web_data();
			res.sendRedirect("site_pages/members.jsp");
		}
		else
		{
			res.sendRedirect("auth/login.jsp");
		}
	}
}
