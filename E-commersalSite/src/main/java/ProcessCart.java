

import java.io.IOException;
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
 * Servlet implementation class ProcessCart
 */
@WebServlet("/ProcessCart")
public class ProcessCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession h = request.getSession();
		String username = (String)h.getAttribute("username");  //need change later
		String action = request.getParameter("action");
		if(action==null || username==null) {
			response.sendRedirect("Login.jsp");
		}
		else if(action.equals("add-to-cart")) {
			Product product_add = (Product) h.getAttribute("product");
			String productID = product_add.getId();
			int amount = Integer.valueOf(request.getParameter("amount"));
			double subtotal = amount*product_add.getPrice();
			String size = request.getParameter("size");
			String pname = product_add.getName();
			Boolean confirm = false;
			String message = "Add product sucessfully!!!";
			if(size.equals("Select Size")) {
				message="Please select the size of product";
				h.setAttribute("message", message);
				ServletContext sc = getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("/Product-Detail.jsp");
				rd.forward(request, response);
			}
			else if(amount<1) {
				message="The amount must be greaeter than 0";
				h.setAttribute("message", message);
				ServletContext sc = getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("/Product-Detail.jsp");
				rd.forward(request, response);
			}
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			//check product is in cart or not and update amount
			try {
				conn = new DBContext().getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery("Select * from Cart where userName="+"'"+username+"'"+"and productID=" + "'"+product_add.getId()+"'" );
				while(rs.next()) {
					amount = Integer.valueOf(rs.getString(3))+amount;
					subtotal = amount*product_add.getPrice();
				}
				rs.close();
			}catch(Exception e) {
				
			}
			
			//remove product in cart
			try {
				conn = new DBContext().getConnection();
				stmt = conn.createStatement();
				stmt.executeUpdate("Delete from Cart where userName="+"'"+username+"'"+"and productID=" + "'"+product_add.getId()+"'" );
				rs.close();
			}catch(Exception e) {
				
			}
			//add product to cart
			try {
				conn = new DBContext().getConnection();
				String sql = "insert into Cart values(?,?,?,?,?,?,?)";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            ps.setString(2, productID);
	            ps.setString(3, String.valueOf(amount));
	            ps.setString(4, String.valueOf(subtotal));
	            ps.setString(5, size);
	            ps.setString(6, pname);
	            ps.setBoolean(7, confirm);
	            ps.execute();
			}catch(Exception e) {
				
			}
			h.setAttribute("message", message);
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/Product-Detail.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("view-cart")) {
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/Cart.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("remove")) {
			String user = request.getParameter("remove-user");
			String productID = request.getParameter("remove-product");
			
			//Remove product from Cart
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = new DBContext().getConnection();
				stmt = conn.createStatement();
				stmt.executeUpdate("Delete from Cart where userName="+"'"+user+"'"+"and productID=" + "'"+productID+"'" );
				rs.close();
			}catch(Exception e) {
				
			}
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/Cart.jsp");
			rd.forward(request, response);

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
