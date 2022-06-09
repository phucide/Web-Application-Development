package entity;

import java.util.List;

import dao.DAO;

public class Test {
	public static void main(String[] args) {
		DAO dao = new DAO();
		List <Cart> list = dao.selectAllCarts();
		for (Cart o : list) {
			System.out.println(o);
		}
		
	}
}