package TPG5.web.auth;
import java.io.IOException;
import java.util.ArrayList;
import TPG5.web.model.mRegistration;
import TPG5.web.scrape.scrapedataObject;
import TPG5.web.dataObject.dataObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class mlogin extends HttpServlet {
	mRegistration mLoginFields = new mRegistration();
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String username= req.getParameter("username");
		String password= req.getParameter("password");
		mLoginFields.setusrname(username);
		mLoginFields.setpassword(password);
		ArrayList<String> user_login = new dataObject().member_login(username, password);
		if(user_login.size()>0)
		{
			String usr_fname = user_login.get(0).toString();
			String usr_lname = user_login.get(1).toString();
			String usr_laccess = user_login.get(2).toString();
			HttpSession session = req.getSession();
			
			session.setAttribute("usr_fname", usr_fname);
			session.setAttribute("usr_lname", usr_lname);
			session.setAttribute("usr_laccess", usr_laccess);
			scrapedataObject update_scrape_tbl = new scrapedataObject();
			//update_scrape_tbl.get_web_data();
			res.sendRedirect("site_pages/members.jsp");
		}
		else
		{
			res.sendRedirect("auth/login.jsp");
		}
	}
}
