package bean;

public class Product {
	private String id;
	private String name;
	private String image;
	private double price;
	private String des;
	private String category;
	
	public String getCategory() {
		return category;
	}
	
	public void SetCategory(String c) {
		this.category = c;
	}
	
	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getImage() {
		return image;
	}
	
	public double getPrice() {
		return price;
	}
	
	public String getDes() {
			
		return des;
	}
	
	public void setID(String id) {
		this.id=id;
	}
	
	public void setName(String name) {
		this.name=name;
	}
	public void setImage(String image) {
		this.image=image;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setDes(String d) {
		this.des=d;
	}
}
