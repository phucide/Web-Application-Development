package entity;

public class Cart {
	private String userName;
	private String productID;
	private int amount;
	private double subtotal;
	private String size;
	private String pname;
	private boolean confirm;
	
	public Cart(String userName, String productID, int amount, double subtotal, String size, String pname, boolean confirm) {
		super();
		this.userName = userName;
		this.productID = productID;
		this.amount = amount;
		this.subtotal = subtotal;
		this.size = size;
		this.pname = pname;
		this.confirm = confirm;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
	public boolean isConfirm() {
		return confirm;
	}

	public void setConfirm(boolean confirm) {
		this.confirm = confirm;
	}

	@Override
	public String toString() {
		return "Cart [userName=" + userName + ", productID=" + productID + ", amount=" + amount + ", subtotal="
				+ subtotal + ", size=" + size + ", pname=" + pname + ", confirm=" + confirm + "]";
	}
	
	
	
	
}
