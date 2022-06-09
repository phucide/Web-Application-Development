package entity;

public class Product {
	private String id;
    private String name;
    private String image;
    private double price;
    private String category;
    private String description;

    public Product() {}

    public Product(String id, String name, String image, double price, String description, String category) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.category = category;
        this.description = description;
    }
    
    public Product(String id, String name, String image, double price, String category) {
    	super();
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.image = image;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", category=" + category + ", description=" + description + '}';
    }
}
