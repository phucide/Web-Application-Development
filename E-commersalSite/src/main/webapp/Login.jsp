<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style1.css" type="text/css">
    
</head>
<body>
    <!-- menu -->
    <div class="main">
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
    <!-- Account -->
    <div class="account-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <img src="loginImages/image1.png" alt="" width="100%">
                    
                </div>
                <div class="col-md-6">
                    <div class="form-container">
                        <div class="form-btn">
                            <span onclick="login()">Log In</span>
                            <span onclick="register()">Register</span>
                            <hr id="Indicator">

                        </div>
                        <form action="LoginControl" id="LoginForm" method="post">
                        	<p class="text-success">${mess1}</p>
                            <input name="user" type="text" placeholder="Username">
                            <input name="pass" type="password" placeholder="Password">
                            <button type="submit" class="btn">Login</button>
                            <a href="">Forgot Password</a>
                        </form>
                        <form action="SignupControl" id="RegisterForm" method="post">
                        	<p class="text-success">${mess2}</p>
                            <input name="user" type="text" placeholder="Username">
                            <input name="e" type="email" placeholder="Email">
                            <input name="pass" type="password" placeholder="Password">
                            <button type="submit" class="btn">Register</button>
                        </form>
                        
                    </div>
                    
                </div>
            </div>
        </div>
        
    </div>



    <!-- footer -->
    <div class="footer">
        <div class="container">
            <hr>
            <div class="image">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android and IOS mobile phone</p>
                    <div class="app-logo">
                        <img src="loginImages/app-store.png" alt="">

                        <img src="loginImages/play-store.png" alt="">
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
                        <li>Youtube</li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
    </div>
    <script src="assets/jquery.min.js"></script>
    <script src="assets/popper.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        
        var RegForm = document.getElementById("RegisterForm");
        var LoginForm = document.getElementById("LoginForm");
        var Indicator = document.getElementById("Indicator");
		
        function login(){
            RegForm.style.transform = "translateX(300px)";
            LoginForm.style.transform = "translateX(300px)";
            Indicator.style.transform = "translateX(50px)"
        }
        
        function register(){
            RegForm.style.transform = "translateX(0px)";
            LoginForm.style.transform = "translateX(0px)";
            Indicator.style.transform = "translateX(150px)"
        }
        
    </script>
    
</body>
</html>