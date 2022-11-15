package TPG5.web.auth;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class mlogout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        private static final long serialVersionUID = 1L;
        HttpSession session = request.getSession();
        session.removeAttribute("usr_fname");
        session.removeAttribute("usr_lname");
        session.removeAttribute("usr_laccess");
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
}