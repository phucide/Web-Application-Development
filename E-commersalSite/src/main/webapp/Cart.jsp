<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="DB.DBContext"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Cart Page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="style1.css" type="text/css">
</head>
<body>
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
<!--Cart-->
<div class="small-container cart">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <!--loop1-->
        <%
        HttpSession h = request.getSession();
        String username = (String)h.getAttribute("username"); //need change later
        Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		double total=0;
		//check product is in cart or not and update amount
		try {
			conn = new DBContext().getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from Cart where userName=" + "'" +username+ "'");
			while(rs.next()) {
				double price = Double.valueOf(rs.getString(4))/ Double.valueOf(rs.getString(3));
				total = total+ Double.valueOf(rs.getString(4)) ; 
		%>
		
		<tr>
            <td>
                <div class="cart-info">
                    <img src="images/<%=rs.getString(2)%>.png" >
                    <div>
                        <p style="padding: 10px; font-size: 30px; font-weight: bold;"><%=rs.getString(6) %></p>
                        <small style="padding: 10px; font-size: 20px;">Price: <%=price %></small>
                        <br>
                        <small style="padding: 10px; font-size: 20px;">Size: <%=rs.getString(5) %></small>
                        
                        <br>
                        <form action = "ProcessCart">
                        	<input type="hidden" name="remove-user" value="<%=rs.getString(1)%>">
                        	<input type="hidden" name="remove-product" value="<%=rs.getString(2)%>">
                        	<button class="remove-btn" style="submit" name="action" value="remove"><a style="padding: 10px;cursor:pointer;">Remove</a></button>
                        </form>
                        
                    </div>
                </div>
            </td>
            <td style="font-size: 20px;"><%=rs.getString(3) %></td>
            <td style="font-size: 20px;">$<%=rs.getString(4) %></td>
        </tr>
		
		<%
			}
			rs.close();
		}catch(Exception e) {
			
		}
		%>
			
        
        
        
        
    </table>
	<%
	if(total!=0){
	%>
    <div class="total-price">
        <table>
            <tr style="font-size: 30px;">
                <td>Total</td>
                <td>$<%=total %></td>
            </tr>
        </table>
    </div>
    <%} %>
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