<%-- 
    Document   : follow
    Created on : Jul 22, 2020, 10:28:26 AM
    Author     : PC
--%>

<%@page import="model.Follow"%>
<%@page import="java.util.List"%>
<%@page import="model.Member"%>
<%@page import="model.Comic" %>
<%@page import="controller.FollowedServlet" %>
<%@page import="model.DatabaseConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>WEB QTL</title>
        <meta name="keywords" content="Web comic">
        <meta name="description" content="Website to product to you some comics to read">
        <meta name="author" content="Group 3">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/favicon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <!-- Start Main Top -->
        <div class="main-top">
            <!--            <div class="container-fluid">
                            <div class="row">
                                 <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> 
                                 <div class="custom-select-box">
                <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                                <option>¥ JPY</option>
                                                <option>$ USD</option>
                                                <option>€ EUR</option>
                                        </select>
            </div> 
                                <div class="our-link">
                                    <ul>
                                        <li><a href="my-account.jsp"><i class="fa fa-user s_color"></i> My Account</a></li>
                                        <li><a href="#"><i class="fas fa-location-arrow"></i> History</a></li>
                                        <li><a href="#"><i class="fas fa-bell"></i> Notification</a></li>
                                    </ul>
                                </div>
            
                                <div class="right-phone-box">
                                    <p>&emsp;&emsp;&emsp;&emsp;Contact US :- <a href="#"> Web QTL</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p>
                                </div>
                                 </div> 
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="login-box" style="text-align: right">
                                        <select id="basic" class="selectpicker show-tick form-control" data-placeholder="Log In" >
                                            <option><a href="#">Log In</a></option>
                                            <option><a href="#">Register Here</a></option>
                                        </select>
                                    </div>
                                    <div class="text-slid-box">
                                        <div id="offer-box" class="carouselTicker">
                                            <ul class="offer-box">
                                                <li>
                                                    <i class="fas fa-book"></i> Manga had to update everyday !!!
                                                </li>
                                                <li>
                                                    <i class="fas fa-user-ninja"></i> Website had a lot of new categories !!!!
                                                </li>
                                                <li>
                                                    <i class="fas fa-chess-queen"></i> Ranking updated by week, month and year  !!!!!
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
        </div>
        <!-- End Main Top -->
        <div class="main-top">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search">&emsp;&emsp;</i></span>
                <form method="POST" action="SearchServlet">
                    <input type="text" style="width: 1000px" name="search" placeholder="Search">
                    <input type="submit" value="Search"/>
                </form>
            </div>
        </div>
    </div>
        <!-- Start Main Top -->
        <!--    <header class="main-header">
                 Start Navigation 
                <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                    <div class="container">
                         Start Header Navigation 
                        <div class="navbar-header">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                            <a class="navbar-brand" href="index.html"><img src="images/logo.png" class="logo" alt=""></a>
                        </div>
                         End Header Navigation 
        
                         Collect the nav links, forms, and other content for toggling 
                        <div class="collapse navbar-collapse" id="navbar-menu">
                                                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                                                        <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                                                        <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                                                        <li class="dropdown active">
                                                                <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                                                                <ul class="dropdown-menu">
                                                                        <li><a href="shop.html">Sidebar Shop</a></li>
                                                                        <li><a href="shop-detail.html">Shop Detail</a></li>
                                                                        <li><a href="cart.html">Cart</a></li>
                                                                        <li><a href="checkout.html">Checkout</a></li>
                                                                        <li><a href="my-account.jsp">My Account</a></li>
                                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                                </ul>
                                                        </li>
                                                        <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
                                                        <li class="nav-item"><a class="nav-link" href="contact-us.html">Contact Us</a></li>
                            </ul>
                        </div>
                         /.navbar-collapse 
        
                         Start Atribute Navigation 
                        <div class="attr-nav">
                            <ul>
                                <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                                <li class="side-menu"><a href="#">
                                                        <i class="fa fa-shopping-bag"></i>
                                    <span class="badge">3</span>
                                                                <p>My Cart</p>
                                                </a></li>
                            </ul>
                        </div>
                         End Atribute Navigation 
                    </div>
                     Start Side Menu 
                    <div class="side">
                        <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                        <li class="cart-box">
                            <ul class="cart-list">
                                <li>
                                    <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                                    <h6><a href="#">Delica omtantur </a></h6>
                                    <p>1x - <span class="price">$80.00</span></p>
                                </li>
                                <li>
                                    <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                                    <h6><a href="#">Omnes ocurreret</a></h6>
                                    <p>1x - <span class="price">$60.00</span></p>
                                </li>
                                <li>
                                    <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                                    <h6><a href="#">Agam facilisis</a></h6>
                                    <p>1x - <span class="price">$40.00</span></p>
                                </li>
                                <li class="total">
                                    <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                                    <span class="float-right"><strong>Total</strong>: $180.00</span>
                                </li>
                            </ul>
                        </li>
                    </div>
                     End Side Menu 
                </nav>
                 End Navigation 
            </header>-->
        <!-- End Main Top -->

        <!-- Start Top Search -->
        <!--    <div class="top-search">
                <div class="container">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                    </div>
                </div>
            </div>-->
        <!-- End Top Search -->

        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <%

                            Member member = (Member) session.getAttribute("member");
                        %>
                        <h2>Followed</h2>
                        <ul class="breadcrumb">
                            <%
                                session.setAttribute("member", member);
                            %>
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item"><a href="my-account.jsp">My account</a></li>
                            <li class="breadcrumb-item active">Followed</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start Wishlist  -->
        <div class="wishlist-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Images</th>
                                        <th>Name Comic</th>
                                        <th>Day Follow</th>
                                        <th>Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Follow> follows = (List<Follow>) session.getAttribute("follows");
                                        boolean check=false,test=false;
                                        for(Follow i:follows){
                                            check=true;
                                            Comic comic = DatabaseConnect.getComic(i.getId_comic());
                                            %>
                                        <tr>
                                        <td class="thumbnail-img">
                                            <a href="comic.jsp">
                                                <img class="img-fluid" src="<%=comic.getImage() %>" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                <%=comic.getName_comic() %>
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p><%= i.getDay_follow() %></p>
                                        </td>
<!--                                        <td class="quantity-box">In Stock</td>
                                        <td class="add-pr">
                                            <a class="btn hvr-hover" href="#">Add to Cart</a>
                                        </td>-->
                                        <td class="remove-pr">
                                            <%
                                                
                                                session.setAttribute("urlFollow", "FollowedServlet");
                                                %>
                                            <form method="POST" action="RemoveFollowServlet">
                                                <input type="hidden" value="<%= comic.getId_comic()%>" name="id_comic"/>
                                                <%
                                                    
                                                        session.setAttribute("id_member", member.getIdMember());
                                                    %>
                                                <input type="submit" name="" value=" X " />
<!--                                                    <i class="fas fa-times"></i>-->
                                            </form>
                                            
                                        </td>
                                    </tr>
                                        <%
                                            }
                                        %>
<!--                                    <tr>
                                        <td class="thumbnail-img">
                                            <a href="#">
                                                <img class="img-fluid" src="images/img-pro-01.jpg" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                Lorem ipsum dolor sit amet
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p>$ 80.0</p>
                                        </td>
                                        <td class="quantity-box">In Stock</td>
                                        <td class="add-pr">
                                            <a class="btn hvr-hover" href="#">Add to Cart</a>
                                        </td>
                                        <td class="remove-pr">
                                            <a href="#">
                                                <i class="fas fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="thumbnail-img">
                                            <a href="#">
                                                <img class="img-fluid" src="images/img-pro-02.jpg" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                Lorem ipsum dolor sit amet
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p>$ 60.0</p>
                                        </td>
                                        <td class="quantity-box">In Stock</td>
                                        <td class="add-pr">
                                            <a class="btn hvr-hover" href="#">Add to Cart</a>
                                        </td>
                                        <td class="remove-pr">
                                            <a href="#">
                                                <i class="fas fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="thumbnail-img">
                                            <a href="#">
                                                <img class="img-fluid" src="images/img-pro-03.jpg" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                Lorem ipsum dolor sit amet
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p>$ 30.0</p>
                                        </td>
                                        <td class="quantity-box">In Stock</td>
                                        <td class="add-pr">
                                            <a class="btn hvr-hover" href="#">Add to Cart</a>
                                        </td>
                                        <td class="remove-pr">
                                            <a href="#">
                                                <i class="fas fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>-->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Wishlist -->

<!--         Start Instagram Feed  
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-01.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-02.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-03.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-04.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-06.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-07.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-08.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-09.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- End Instagram Feed  -->
        <div>
            <%
                if(!check){
                    %>
                    <h1 style='color: red; text-align: center'> No comic followed</h1>
                    
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                    <%
                }
                %>
        </div>

        <!-- Start Footer  -->
        <div class="footer-main">
            <div class="container">
				<div class="row">
<!--					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Business Time</h3>
							<ul class="list-time">
								<li>Monday - Friday: 08.00am to 05.00pm</li> <li>Saturday: 10.00am to 08.00pm</li> <li>Sunday: <span>Closed</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Newsletter</h3>
							<form class="newsletter-box">
								<div class="form-group">
									<input class="" type="email" name="Email" placeholder="Email Address*" />
									<i class="fa fa-envelope"></i>
								</div>
								<button class="btn hvr-hover" type="submit">Submit</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>Social Media</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							<ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
						</div>
					</div>
				</div>
				<hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About Freshshop</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> 
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> 							
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                                <li><a href="#">Terms &amp; Conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Delivery Information</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
<!--        <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
            <a href="https://html.design/">html design</a></p>
    </div>-->
    <!-- End copyright  -->


        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>