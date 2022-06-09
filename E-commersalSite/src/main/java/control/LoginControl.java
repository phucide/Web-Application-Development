package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Account;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/LoginControl")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("user");
        String pwd = request.getParameter("pass");
        DAO dao = new DAO();
        Account a = dao.login(username, pwd);
        if ("admin".equals(username) && "admin".equals(pwd)) {
        	response.sendRedirect("AccountControl");
        }else {
        	if (a == null) {
            	request.setAttribute("mess1", "Wrong username or password");
            	request.setAttribute("mess2", "Do not have an account? Please sign up");
            	request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            else {
            	HttpSession h = request.getSession();
            	h.setAttribute("username", username);
            	request.getRequestDispatcher("index.html").forward(request, response);
            }
		}
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
