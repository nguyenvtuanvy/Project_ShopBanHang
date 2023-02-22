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
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Mua Ban Hang</title>
    </head>

    <body>
        <header class="section-header" >
            <section class="header-main border-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-4"><img src="assets/imges/logo.jpg" style="width: 60px;cursor: pointer" alt="logo"/></div>
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
                                    <a href="PayCart.jsp" class="icon icon-sm rounded-circle border">
                                        <i class="fa fa-shopping-cart"></i></a>
                                    <span class="badge badge-pill badge-danger notify">${sosanpham}</span>
                                </div>
                                <div class="widget-header icontext">
                                    <a href="#" class="icon icon-sm rounded-circle border"><i
                                            class="fa fa-user"></i></a>
                                    <div class="text">
                                        <span class="text-muted">Welcome!</span>
                                        <div>
                                            <!--<form action="LoginControl" method="post"/>-->
                                            <c:choose>
                                                <c:when test="${textr==true}"> <p>${nameuser}</p> </c:when>
                                                <c:otherwise><a href = "Login.jsp" > Sign in </a > | <a href = "SignUp.jsp" > Register </a></c:otherwise>
                                            </c:choose>
                                            <!--</form>-->
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
        <section class="section-main bg padding-y">
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
                    <h3 class="section-title">Details products</h3>
                </header>
                <!-- sect-heading -->

                <div class="row onlyrow">
                    <div class="col-md-3 onlycol">
                        <div href="#" class="card card-product-grid" >
                            <a href="#" class="img-wrap">
                                <img src="assets/imges/items/${detail.image}" />
                            </a>
                            <form action="PayControl" method="post">
                                <figcaption class="info-wrap">
                                    <a href="#" class="title" style="font-size: 30px">${detail.name}</a>
                                    <p class="decription">${detail.description}</p>
                                    <div class="price mt-1" style="color: red">${detail.price}</div>
                                    <!-- price-wrap.// -->
                                    <div class="cart-quantity" style="display: flex;align-items: flex-end;margin-top: 20px;">
                                        <button type="submit" name="txtid" value="${detail.id}" class="btn btn-danger" style="width: 60px;">
                                            <i class="fa fa-shopping-cart"></i>
                                        </button>
                                        <!--add in cart--> 
                                        <div class="input-group" style="margin-left: 20px;width: 25%;">
                                            <span class="input-group-btn">
                                                <button type="button" class="quantity-left-minus btn btn-danger btn-number"
                                                        data-type="minus" data-field="" style="width: 30px;">
                                                    <span class="glyphicon glyphicon-minus">-</span>
                                                </button>
                                            </span>
                                            <input type="text" id="quantity" style="width: 50px;" name="quantity"
                                                   class="form-control input-number" value="1" min="1" max="100">
                                            <span class="input-group-btn">
                                                <button type="button" class="quantity-right-plus btn btn-success btn-number"
                                                        data-type="plus" data-field="">
                                                    <span class="glyphicon glyphicon-plus">+</span>
                                                </button>
                                            </span>
                                        </div>
                                    </div>
                                </figcaption>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- row.// -->
            </div>
            <!-- container // -->
        </section>
        <script>
            $(document).ready(function () {
                var quantitiy = 0;
                $('.quantity-right-plus').click(function (e) {
// Stop acting like a button
                    e.preventDefault();
// Get the field name
                    var quantity = parseInt($('#quantity').val());
// If is not undefined
                    $('#quantity').val(quantity + 1);
// Increment
                });
                $('.quantity-left-minus').click(function (e) {
// Stop acting like a button
                    e.preventDefault();
// Get the field name
                    var quantity = parseInt($('#quantity').val());
// If is not undefined
// Increment
                    if (quantity > 0) {
                        $('#quantity').val(quantity - 1);
                    }
                });
            });
        </script>
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
                        <!-- <a href="#"><img src="assets/imges/misc/appstore.png" height="40" /></a> -->
                        <a href="#"><img src="assets/imges/appstore.jpg" height="100" /></a>
                    </div>
                </div>
                <!-- row.// -->
            </div>
            <!-- container // -->
        </section>
        <!-- ========================= SECTION  END// ======================= -->

        <!-- ========================= FOOTER ========================= -->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- ========================= FOOTER END // ========================= -->
    </body>

</html>