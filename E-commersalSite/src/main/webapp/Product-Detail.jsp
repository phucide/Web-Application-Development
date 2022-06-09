<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bean.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="style1.css" type="text/css">
</head>
<body>
<%
HttpSession h = request.getSession();
Product product = (Product)h.getAttribute("product");
String message = (String)h.getAttribute("message");
%>
<div class="main" style="padding-bottom: 100px;">
    <div class="nav-part">
        <div class="logo">
            <h1>PDQ Store</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li class="pr"><a href="All-Product.html">Products</a>
                    <div class="drop-down-menu" style="background: white;">
                        <ul>
                            <li style="padding: 5px; margin: 3px;"><a href="" >Shirts</a></li>
                            <li style="padding: 5px; margin: 3px;"><a href="" >Shoes & Boots</a></li>
                            <li style="padding: 5px; margin: 3px;"><a href="" >Bags</a></li>
                            <li style="padding: 5px; margin: 3px;"><a href="" >Hats</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="About.html">About</a></li>
                <li><a href="Contact.html">Contact</a></li>               
                <li><a href="LogOutServlet">LogOut</a></li>                               
            </ul>
        </nav>
		<form action="ProcessCart">
        	<button class="remove-btn" type="submit" name= "action" value="view-cart" style="cursor:pointer;"><img src="images/cart.png" width="30px" height="30px"></button>
        </form>    
	</div>
</div>

<div class="small-container single-product">
    <div class="image">
        <div class="col-2">
            <img src="images/<%=product.getImage() %>" width="100%">
        </div>
        <div class="col-2" style="max-width: 600px;">
        <form action="ProcessCart">
            <p style="font-size: 20px;text-decoration:underline;">Category: <%=product.getCategory() %></p>
            <h1 style="font-size:50px ;"><%=product.getName() %></h1>
            <h4>$<%=product.getPrice() %></h4>
            <select class="select" name="size">
                <option>Select Size</option>
                <option>XXL</option>
                <option>XL</option>
                <option>L</option>
            </select>
            <input type="number" value="1" name="amount">
            <button class="remove-btn" type="submit" name="action" value="add-to-cart"><a class="bt">Add to Cart</a></button>
            <%
            if(message!=null){
            	if(message.equals("Add product sucessfully!!!")){
            %>
            		<p style="color:green"><%=message %></p>
            <%
            	}
            	else{
            %>
            		<p style="color:red"><%=message %></p>
            <%
             	}
            }
            h.removeAttribute("message");
            %>		
            <h2>Product Details</h2>
            <p><%=product.getDes() %></p>
            
		</form>
        </div>
    </div>
</div>

<div class="small-container" style="margin-top: 30px;">
    <div class="image row-2">
        <h2>Related Products</h2>
        <a class="view-more" href="All-Product.html">View more</a>
    </div>
</div>

<!--Feautured Product-->
<div class="small-container">
<form action="GetProduct">
   
    <div class="image">
        <div class="image2">
            <button class="remove-btn" type="submit" name="product" value="shoe1"><img src="images/shoe1.png"></button>
            <h4>'Leighton' Trainers</h4>
            <p>$49</p>
        </div>
        <div class="image2">
            <button class="remove-btn" type="submit" name="product" value="hat1"><img src="images/hat1.png"></button>
            <h4>Breeze' Ripstop Bucket Hat</h4>
            <p>$25</p>
        </div>
        <div class="image2">
            <button class="remove-btn" type="submit" name="product" value="cloth1"><img src="images/cloth1.png"></button>
            <h4>Cotton Double Stripe Short Sleeve Shirt</h4>
            <p>$25</p>
        </div>
        <div class="image2">
            <button class="remove-btn" type="submit" name="product" value="bag1"><img src="images/bag1.png"></button>
            <h4>'Edu' Leather Holdall
            </h4>
            <p>$50</p>
        </div>
    </div>
</form>       
</div>
<!--Brands-->
<div class="brands">
    <div class="small-container">
        <div class="image">
            <div class="col-5">
                <img src="images/logo-coca-cola.png">
            </div>
            <div class="col-5">
                <img src="images/logo-godrej.png">
            </div>
            <div class="col-5">
                <img src="images/logo-oppo.png">
            </div>
            <div class="col-5">
                <img src="images/logo-paypal.png">
            </div>
            <div class="col-5">
                <img src="images/logo-philips.png">
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container">
        <hr>
        <div class="image">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and IOS mobile phone</p>
                <div class="app-logo">
                    <img src="images/app-store.png" alt="">
                    
                    <img src="images/play-store.png" alt="">
                </div>
            </div>
            <div class="footer-col-2">
                <h1 style="color: red; margin-bottom: 20px;">PDQ Store</h1>
                <p>Our Purpose Is To Sustainably Make the Pleasure and Benefits of Sports Accessible to the Many</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>Youtobe</li>
                </ul>
            </div>
        </div>
        <hr>
    </div>
</div>
</body>
</html>