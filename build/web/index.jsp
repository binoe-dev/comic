<%-- 
    Document   : index
    Created on : Jul 19, 2020, 9:59:55 AM
    Author     : PC
--%>

<%@page import="model.RandomComic"%>
<%@page import="java.util.Random"%>
<%@page import="model.Comic"%>
<%@page import="java.util.List"%>
<%@page import="model.DatabaseConnect"%>
<%@page import="controller.CategoryServlet" %>
<%@page import="model.Categories" %>
<%@page import="model.Member" %>
<%@page import="controller.LoginServlet" %>
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
            <%
                Member member = null;

                member = (Member) session.getAttribute("member");
            %>
            <div class="container-fluid">
                <div class="row">
                    <!-- <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> -->
                    <!-- <div class="custom-select-box">
    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                    <option>¥ JPY</option>
                                    <option>$ USD</option>
                                    <option>€ EUR</option>
                            </select>
</div>--> 
                    <div class="our-link">
                        <ul>
                            <%
                                
                                String urlHis = "login.jsp";
                                String url = "#";
                                if (member == null) {
                                    url = "login.jsp";
                                } else {
                                    urlHis="HistoryServlet";
                                    session.setAttribute("member", member);
                                    url = "my-account.jsp";
                                }
                            %>
                            <li><a href="<%=url%>"><i class="fa fa-user s_color"></i> My Account</a></li>
                            <li><a href="<%=urlHis%>"><i class="fas fa-location-arrow"></i> History</a></li>
                            <li><a href="#"><i class="fas fa-bell"></i> Notification</a></li>
                        </ul>
                    </div>

                    <div class="right-phone-box">
                        <p>&emsp;&emsp;&emsp;&emsp;Contact US :- <a href="https://www.facebook.com/profile.php?id=100007822087391"> Web QTL</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p>
                    </div>
                    <!-- </div> -->

                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <%--<c:set var="member" scope="Member" value="${member}"/>--%>
                        <%--<c:choose>--%>
                        <%--<c:when test="${member==null}">--%>
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
                                    <i class="fas fa-chess-queen"></i> Friendly interface !!!!!
                                </li>
                            </ul>
                        </div>
                    </div>
                        <%
                            if (member == null) {

                        %>
                        <div class="login-box" style="text-align: right">
                            <!--                        <div class="all-title-box">-->
                            <div class="container">
                                <ul class="breadcrumb">
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="Register.jsp">Register</a></li>
                                </ul>
                            </div>
                        </div>
                        <%                         } else {
                        %>
                        <%--</c:when>--%>
                        <%--<c:otherwise>--%>
                        
                        <div class="login-box" style="text-align: right">
                            <!--                        <div class="all-title-box">-->
                            <div class="container">
                                <ul class="breadcrumb">
                                    <li><a href="LogoutServlet">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <%--</c:otherwise>--%>
                    <%--</c:choose>--%>
                    <!--</div>-->
                    
                </div>
            </div>
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
    <header class="main-header">
        <!-- Start Navigation -->


        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                        <!-- <li class="nav-item"><a class="nav-link" href="#">Categories</a></li> -->
                        <%
                            List<Categories> categories = DatabaseConnect.getCategory();
                            %>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Categoris</a>
                            <ul class="dropdown-menu" >
                                <%
                                    for(Categories i: categories){
                                        
                                %>
                                <form style="text-align: center" method="POST" action="CategoryServlet">
                                    <input type="hidden" value="<%= i.getIdCategory()%>" name="id_category"/>
                                    <li><input type="submit" style="width: 100px;height: 50px" value="<%=i.getNameCategory()%>"/></li>
                                </form>
                                    <%
                                        }
                                    %>

                            </ul>
                        </li>
                        <%
                            if (member != null) {
                                session.setAttribute("member", member);
                                urlHis="HistoryServlet";
                                url = "FollowedServlet";
                            }
                        %>
                        <li class="nav-item"><a href="Ranking.jsp" class="nav-link">Ranking</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=urlHis%>">History</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=url%>">Followed</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <!--                <div class="attr-nav">
                                    <ul>
                                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                                        <li class="side-menu">
                                                                        <a href="#">
                                                                                <i class="fa fa-shopping-bag"></i>
                                                                                <span class="badge">3</span>
                                                                                <p>My Cart</p>
                                                                        </a>
                                                                </li>
                                    </ul>
                                </div>-->
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <!--                <div class="side">
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
                            </div>-->
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->
    <%
        List<Comic> comics = DatabaseConnect.getAllFromNewComics();
    %>
    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <%
                for (int i = 0; i < 3; i++) {
            %>
            <li class="text-center">
                <img src="<%=comics.get(i).getImage()%>" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong><%=comics.get(i).getName_comic()%></strong></h1>
                            <p class="m-b-40"><%=comics.get(i).getDescription()%></p>
                            <p>
                            <form class="btn hvr-hover" method="POST" action="ComicServlet">

                                <input type="hidden" value="<%= comics.get(i).getId_comic()%>" name="comic"/>
                                <INPUT TYPE="submit" value="Read" />
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <%
                }
            %>
            <!--                <li class="text-center">
                                <img src="Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/001-fix.jpg" alt="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h1 class="m-b-20"><strong>Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực</strong></h1>
                                            <p class="m-b-40">Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực.</p>
                                            <p><a class="btn hvr-hover" href="#">Read</a></p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="text-center">
                                <img src="Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/001-fix (1).jpg" alt="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h1 class="m-b-20"><strong>Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu</strong></h1>
                                            <p class="m-b-40">Đọc đi rồi biết.</p>
                                            <p><a class="btn hvr-hover" href="#">Read</a></p>
                                        </div>
                                    </div>
                                </div>
                            </li>-->
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

    <!-- Start Categories  -->
    <div class="categories-shop">
        <div class="container">
            <div class="row">
                <%
                    for(Categories i:categories){
                        
                %>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        
                        <img style="height: 500px" class="img-fluid" src="images/<%=i.getNameCategory()%>.jpg" alt="" />
                        <form class="btn hvr-hover" method="POST" action="CategoryServlet">
                            <input type="hidden" value="<%=i.getIdCategory()%>" name="id_category"/>
                            <input type="submit" value="<%=i.getNameCategory()%>"/>
                        </form>
                    </div>
                </div>
                <%
                    }
                %>
                
            </div>
        </div>
    </div>
    <!-- End Categories -->

    <!--        <div class="box-add-products">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="offer-box-products">
                                <img class="img-fluid" src="images/add-img-01.jpg" alt="" />
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="offer-box-products">
                                <img class="img-fluid" src="images/add-img-02.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->

    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>New Update</h1>
                        <!--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>-->
                    </div>
                </div>
            </div>
            <!--<div class="instagram-box">-->
            <div class="product-categorie-box">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                        <div class="row">
                            <!--<div class="row special-list">-->
                            <%
                                int count=0;
                                for (Comic i : comics) {
                                    count++;
                                    if(count==10){
                                        break;
                                    }
                            %>


                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                <div class="products-single fix">
                                    <div class="box-img-hover" style="height: 400px">
                                        <div class="type-lb">
                                            <p class="sale">New</p>
                                        </div>
                                        <img src="<%= i.getImage()%>" class="img-fluid" alt="Image"/>

                                        <div class="mask-icon">
                                            <ul>
                                                <li>

                                                </li>
                                            </ul>
                                            <!--                                    <ul>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                                </ul>-->
                                            <form class="cart" method="POST" action="ComicServlet">

                                                <input type="hidden" value="<%= i.getId_comic()%>" name="comic"/>
                                                <INPUT TYPE="submit" value="Read" />
                                            </form>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <div style="overflow: scroll; height: 200px">
                                            <h4><%= i.getDescription()%></h4>
                                        </div>
                                        <h5> <%= i.getName_comic()%></h5>
                                    </div>
                                </div>
                            </div>


                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        
        List<Comic> random = RandomComic.random(comics);
        List<Comic> ranks = DatabaseConnect.getAllRankingComics();
    %>
    <div class="products-box">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Suggestion</h1>
                        <!--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>-->
                    </div>
                </div>
            </div>
            <div class="product-categorie-box">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                        <div class="row">

                            <%
                                count=0;
                                for (Comic i : random) {
                                    count++;
                                    if(count==10){
                                        break;
                                    }
                            %>
                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                <div class="products-single fix">
                                    <div class="box-img-hover" style="height: 400px">
                                        <div class="type-lb">
                                            <p class="sale">Suggestion</p>
                                        </div>
                                        <img src="<%= i.getImage()%>" class="img-fluid" alt="Image"/>

                                        <div class="mask-icon">
                                            <ul>
                                                <li>

                                                </li>
                                            </ul>
                                            <!--                                    <ul>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                                </ul>-->
                                            <form class="cart" method="POST" action="ComicServlet">

                                                <input type="hidden" value="<%= i.getId_comic()%>" name="comic"/>
                                                <INPUT TYPE="submit" value="Read" />
                                            </form>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <div style="overflow: scroll; height: 200px">
                                            <h4><%= i.getDescription()%></h4>
                                        </div>
                                        <h5> <%= i.getName_comic()%></h5>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Ranking</h1>
                        <!--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>-->
                    </div>
                </div>
            </div>
            <div class="product-categorie-box">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                        <div class="row">

                            <%
                                count=0;
                                for (Comic i : ranks) {
                                    count++;
                                    if(count==10){
                                        break;
                                    }
                            %>
                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                <div class="products-single fix">
                                    <div class="box-img-hover" style="height: 400px">
                                        <div class="type-lb">
                                            <p class="sale">Ranking</p>
                                        </div>
                                        <img src="<%= i.getImage()%>" class="img-fluid" alt="Image"/>

                                        <div class="mask-icon">
                                            <ul>
                                                <li>

                                                </li>
                                            </ul>
                                            <!--                                    <ul>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                                </ul>-->
                                            <form class="cart" method="POST" action="ComicServlet">

                                                <input type="hidden" value="<%= i.getId_comic()%>" name="comic"/>
                                                <INPUT TYPE="submit" value="Read" />
                                            </form>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <div style="overflow: scroll; height: 200px">
                                            <h4><%= i.getDescription()%></h4>
                                        </div>
                                        <h5> <%= i.getName_comic()%></h5>
                                    </div>
                                </div>
                            </div>
                            <%
                                }

                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!--</div>-->
    <!--            
    <div class="product-categorie-box">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb">
                                                            <p class="sale">Sale</p>
                                                        </div>
                                                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <h5> $9.79</h5>
                                                    </div>
                                                </div>
                                            </div>
                            <div class="col-lg-3 col-md-6 special-grid top-featured">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <div class="type-lb">
                                        <p class="new">New</p>
                                    </div>
                                    <img src="Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/001-fix (1).jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="#">Read</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Mèo méo meo mèo meo</h4>
                                    <h5>GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN</h5>
                                </div>
                            </div>
                        </div>
    
                        <div class="col-lg-3 col-md-6 special-grid top-featured">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <div class="type-lb">
                                        <p class="sale">Sale</p>
                                    </div>
                                    <img src="Comic/Hitman/chap 1/002-fix.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="#">Read</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Let's kill this love</h4>
                                    <h5> Hitman</h5>
                                </div>
                            </div>
                        </div>
    
                        <div class="col-lg-3 col-md-6 special-grid best-seller">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <div class="type-lb">
                                        <p class="sale">Sale</p>
                                    </div>
                                    <img src="Comic/Doraemon học tập/chap 1/001-fix.jpg" class="img-fluid" alt="Image">
                                    <div class="mask-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <a class="cart" href="#">Read</a>
                                    </div>
                                </div>
                                <div class="why-text">
                                    <h4>Không sao mà anh đây rồi em ơi</h4>
                                    <h5>Doraemon học tập</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
    <!-- End Products  -->

    <!-- Start Blog  -->
    <!--        <div class="latest-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="title-all text-center">
                                <h1>latest blog</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img.jpg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>Fusce in augue non nisi fringilla</h3>
                                        <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img-01.jpg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>Fusce in augue non nisi fringilla</h3>
                                        <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img-02.jpg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>Fusce in augue non nisi fringilla</h3>
                                        <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             End Blog  
    
    
             Start Instagram Feed  
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
            </div>
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container"><!--
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
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
                    </div>
                </div>
                -->                </div>
        </div>
    </footer><!--
     End Footer  

     Start copyright  
    <div class="footer-copyright">
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
