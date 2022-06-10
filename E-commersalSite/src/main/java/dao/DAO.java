package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBContext;
import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Product;

public class DAO {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	public Account login(String user, String pass) {
		String query = "select * from account where username = ? and password = ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new Account(rs.getString(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public Account checkAccountExist(String user) {
		String query = "select * from account where username = ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new Account(rs.getString(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public void signup(String user, String email, String pass) {
		String query = "insert into account value(?,?,?)";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public Account selectAccount(String user) {
		String query = "select * from account where username = ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new Account(rs.getString(1), rs.getString(2), rs.getString(3));
			}
		} catch (Exception e) {
			
		}
		return null;
    }
	
	public List < Account > selectAllAccounts() {
        List < Account > accounts = new ArrayList < > ();
        String query = "select * from account";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				accounts.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			
		}
		return accounts;
    }
	
	public void deleteAccount(String username) {
        String query = "delete from account where username = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, username);
            ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public void editAccount(String username, String email, String password) {
        String query = "update account set email = ?, password = ? where username = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, email);
        	ps.setString(2, password);
			ps.setString(3, username);
			ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public Product selectProduct(String id) {
		String query = "select * from products where id = ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
    }
	
	public List < Product > selectAllProducts() {
        List < Product > products = new ArrayList < > ();
        String query = "select * from products";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return products;
    }
	
	public void deleteProduct(String id) {
        String query = "delete from products where id = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public void editProduct(String id, String name, String image, double price, String description, String category) {
		String query = "update products set name = ?, image = ?, price = ?, description = ?, category = ? where id = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, name);
        	ps.setString(2, image);
			ps.setDouble(3, price);
			ps.setString(4, description);
        	ps.setString(5, category);
			ps.setString(6, id);
			ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public void addProduct(String id, String name, String image, double price, String description, String category) {
		String query = "insert into products value(?, ?, ?, ?, ?, ?)";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
			ps.setString(1, id);
        	ps.setString(2, name);
        	ps.setString(3, image);
			ps.setDouble(4, price);
			ps.setString(5, description);
        	ps.setString(6, category);
			ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public List < Category > selectAllCategories() {
        List < Category > categories = new ArrayList < > ();
        String query = "select * from category";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				categories.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return categories;
    }
	
	public List < Cart > selectAllCarts() {
        List < Cart > carts = new ArrayList < > ();
        String query = "select * from cart";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				carts.add(new Cart(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getBoolean(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return carts;
    }
	
	public Cart selectCart(String userName, String productID) {
		String query = "select cart where userName = ? and productID = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, userName);
        	ps.setString(2, productID);
			ps.executeUpdate();
			rs = ps.executeQuery();
			while(rs.next()) {
				return new Cart(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));}
        } catch (Exception e) {
			// TODO: handle exception
		}
        return null;
    }
	
	public void deleteCart(String userName, String productID) {
        String query = "delete from cart where userName = ? and productID = ?;";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setString(1, userName);
        	ps.setString(2, productID);
            ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
	
	public void confirmCart(String userName, String productID) {
		String query = "update cart set confirm = ? where userName = ? and productID = ?";
        try	{
        	conn = new DBContext().getConnection();
        	ps = conn.prepareStatement(query);
        	ps.setBoolean(1, true);
        	ps.setString(2, userName);
			ps.setString(3, productID);
			ps.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
		}
    }
}
