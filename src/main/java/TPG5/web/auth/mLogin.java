package TPG5.web.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import TPG5.web.dataObject.dataObject;
import TPG5.web.scrape.scrapedataObject;

/**
 * Servlet implementation class mLogin
 */
public class mLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username, password;
		System.out.println("inside servlet");
		username= request.getParameter("username");
		password= request.getParameter("password");
		System.out.println("Before Data Obj");
		
		ArrayList user_login = new dataObject().member_login(username, password);
		System.out.println("After Data Obj");
		if(user_login.size()>0)
		{
			String usr_fname = user_login.get(0).toString();
			String usr_lname = user_login.get(1).toString();
			String usr_laccess = user_login.get(2).toString();
			HttpSession session = request.getSession();
			
			session.setAttribute("usr_fname", usr_fname);
			session.setAttribute("usr_lname", usr_lname);
			session.setAttribute("usr_laccess", usr_laccess);
			System.out.println("After Att Set");
			//scrapedataObject update_scrape_tbl = new scrapedataObject();
			//update_scrape_tbl.get_web_data();
			response.sendRedirect("../site_pages/members.jsp");
		}
		else
		{
			response.sendRedirect("auth/login.jsp");
		}
	}

}
