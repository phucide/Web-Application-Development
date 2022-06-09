




import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DBContext;
import bean.Product;






/**
 * Servlet implementation class GetProduct
 */
@WebServlet("/GetProduct")
public class GetProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	    
		String pro = request.getParameter("product");
		Product product = new Product();
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;
		try {
			connection = new DBContext().getConnection();
			statement = connection.createStatement(); //step 4
			rs = statement.executeQuery("SELECT * FROM products where id="+"'"+pro+"'"); //step 5
			while (rs.next()) {
				product.setID(rs.getString(1));
				product.setName(rs.getString(2));
				product.setImage(rs.getString(3));
				product.setPrice(Double.valueOf(rs.getString(4)));
				product.setDes(rs.getString(5));
				product.SetCategory(rs.getString(6));
			}
			rs.close();
		}catch(Exception e) {
			
		}
		HttpSession h = request.getSession();
		h.setAttribute("product", product);
		
		ServletContext sc = getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher("/Product-Detail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
