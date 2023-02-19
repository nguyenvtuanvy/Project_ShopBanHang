<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/ui.css" rel="stylesheet">
        <link href="assets/css/responsive.css" rel="stylesheet">
        <link href="assets/css/all.min.css" rel="stylesheet">
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <title>Mua Ban Hang</title>
    </head>

    <body>
        <header class="section-header" >
            <section class="header-main border-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-4">Therichpost.com</div>
                        <div class="col-lg-6 col-sm-12">
                            <form action="SearchControl" class="search">
                                <div class="input-group w-100">
                                    <input type="text" name="txt" class="form-control" placeholder="Search""/>
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                            <!-- search-wrap .end// -->
                        </div>
                        <!-- col.// -->
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="widgets-wrap float-md-end">
                                <div class="widget-header me-3">
                                    <a href="#" class="icon icon-sm rounded-circle border"><i
                                            class="fa fa-shopping-cart"></i></a>
                                    <span class="badge badge-pill badge-danger notify">0</span>
                                </div>
                                <div class="widget-header icontext">
                                    <a href="#" class="icon icon-sm rounded-circle border"><i
                                            class="fa fa-user"></i></a>
                                    <div class="text">
                                        <span class="text-muted">Welcome!</span>
                                        <div>
                                            <a href="Login.jsp">Sign in</a> |
                                            <a href="SignUp.jsp"> Register</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- widgets-wrap.// -->
                        </div>
                        <!-- col.// -->
                    </div>
                    <!-- row.// -->
                </div>
                <!-- container.// -->
            </section>
            <!-- header-main .// -->

            <nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Supermarket</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Partnership</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Baby &amp; Toys</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Fitness sport</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Clothing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Furnitures</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    More
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li>
                                        <a class="dropdown-item" href="#">Foods and Drink</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#">Home interior</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">Home interior 2</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- collapse .// -->
                </div>
                <!-- container .// -->
            </nav>
        </header>
        <!-- section-header.// -->

        <!-- ========================= SECTION MAIN ========================= -->
        <section class="section-main bg padding-y" >
            <div class="container">
                <div class="row">
                    <aside class="col-md-3">
                        <nav class="card">
                            <ul class="menu-category">
                                <li><a href="#">Best clothes</a></li>
                                <li><a href="#">Automobiles</a></li>
                                <li><a href="#">Home interior</a></li>
                                <li><a href="#">Electronics</a></li>
                                <li><a href="#">Technologies</a></li>
                                <li><a href="#">Digital goods</a></li>
                                <li class="has-submenu">
                                    <a href="#">More items</a>
                                    <ul class="submenu">
                                        <li><a href="#">Submenu name</a></li>
                                        <li><a href="#">Great submenu</a></li>
                                        <li><a href="#">Another menu</a></li>
                                        <li><a href="#">Some others</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </aside>
                    <!-- col.// -->
                    <div class="col-md-9">
                        <article class="banner-wrap">
                            <img src="assets/imges/2.jpg" class="w-100 rounded" />
                        </article>
                    </div>
                    <!-- col.// -->
                </div>
                <!-- row.// -->
            </div>
            <!-- container //  -->
        </section>
        <!-- ========================= SECTION MAIN END// ========================= -->

        <!-- ========================= SECTION  ========================= -->
        <section class="section-name padding-y-sm">
            <div class="container">
                <header class="section-heading">
                    <a href="HomeControl" class="btn btn-outline-primary float-end">See all</a>
                    <h3 class="section-title">Popular products</h3>
                </header>
                <!-- sect-heading -->

                <form action="HomeControl">
                    <div class="row">
                        <c:forEach var="o" items="${listProd}">
                            <div class="col-md-3">
                                <div href="DetailControl?pid=${o.id}" class="card card-product-grid">
                                    <a href="DetailControl?pid=${o.id}" class="img-wrap">
                                        <img src="assets/imges/items/${o.image}" alt="ảnh"/>
                                    </a>
                                    <div class="info-wrap">
                                        <a href="DetailControl?pid=${o.id}" class="title">${o.name}</a>
                                        <div class="price mt-1">${o.price}</div>
                                        <!-- price-wrap.// -->
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </form>
                <!-- row.// -->
            </div>
            <!-- container // -->
        </section>
        <!-- ========================= SECTION  END// ========================= -->

        <!-- ========================= SECTION  ========================= -->
        <section class="section-name padding-y bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Download app demo text</h3>
                        <p>Get an amazing app to make Your life easy</p>
                    </div>
                    <div class="col-md-6 text-md-end">
                        <!--<a href="#"><img src="assets/imges/download.jpg" height="100" /></a>-->
                        <a href="#"><img src="assets/imges/appstore.jpg" height="100" /></a>
                    </div>
                </div>
            </div>

        </section>
        <!-- ========================= SECTION  END// ======================= -->

        <!-- ========================= FOOTER ========================= -->
        <footer class="section-footer border-top bg">
            <div class="container">
                <section class="footer-top padding-y">
                    <div class="row">
                        <aside class="col-md col-6">
                            <h6 class="title">Brands</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Adidas</a></li>
                                <li><a href="#">Puma</a></li>
                                <li><a href="#">Reebok</a></li>
                                <li><a href="#">Nike</a></li>
                            </ul>
                        </aside>
                        <aside class="col-md col-6">
                            <h6 class="title">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Career</a></li>
                                <li><a href="#">Find a store</a></li>
                                <li><a href="#">Rules and terms</a></li>
                                <li><a href="#">Sitemap</a></li>
                            </ul>
                        </aside>
                        <aside class="col-md col-6">
                            <h6 class="title">Help</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Contact us</a></li>
                                <li><a href="#">Money refund</a></li>
                                <li><a href="#">Order status</a></li>
                                <li><a href="#">Shipping info</a></li>
                                <li><a href="#">Open dispute</a></li>
                            </ul>
                        </aside>
                        <aside class="col-md col-6">
                            <h6 class="title">Account</h6>
                            <ul class="list-unstyled">
                                <li><a href="#"> User Login </a></li>
                                <li><a href="#"> User register </a></li>
                                <li><a href="#"> Account Setting </a></li>
                                <li><a href="#"> My Orders </a></li>
                            </ul>
                        </aside>
                        <aside class="col-md">
                            <h6 class="title">Social</h6>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#"> <i class="fab fa-facebook"></i> Facebook </a>
                                </li>
                                <li>
                                    <a href="#"> <i class="fab fa-twitter"></i> Twitter </a>
                                </li>
                                <li>
                                    <a href="#"> <i class="fab fa-instagram"></i> Instagram </a>
                                </li>
                                <li>
                                    <a href="#"> <i class="fab fa-youtube"></i> Youtube </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                    <!-- row.// -->
                </section>
                <!-- footer-top.// -->

                <section class="footer-bottom row">
                    <div class="col-md-2">
                        <p class="text-muted">2021 Company name</p>
                    </div>
                    <div class="col-md-8 text-md-center">
                        <span class="px-2">info@com</span>
                        <span class="px-2">+000-000-0000</span>
                        <span class="px-2">Street name 123, ABC</span>
                    </div>
                    <div class="col-md-2 text-md-end text-muted">
                        <i class="fab fa-lg fa-cc-visa"></i>
                        <i class="fab fa-lg fa-cc-paypal"></i>
                        <i class="fab fa-lg fa-cc-mastercard"></i>
                    </div>
                </section>
            </div>
            <!-- //container -->
        </footer>
        <!-- ========================= FOOTER END // ========================= -->
    </body>

</html>