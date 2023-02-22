<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <link rel="stylesheet" href="style.css"> -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Thanh toán</title>
    </head>
    <style>
        .payment-info {
            background: blue;
            padding: 10px;
            border-radius: 6px;
            color: #fff;
            font-weight: bold;
        }

        .product-details {
            padding: 10px;
        }

        body {
            background: #eee;
        }

        .cart {
            background: #fff;
        }

        .p-about {
            font-size: 12px;
        }

        .table-shadow {
            -webkit-box-shadow: 5px 5px 15px -2px rgba(0, 0, 0, 0.42);
            box-shadow: 5px 5px 15px -2px rgba(0, 0, 0, 0.42);
        }

        .type {
            font-weight: 400;
            font-size: 10px;
        }

        label.radio {
            cursor: pointer;
        }

        label.radio input {
            position: absolute;
            top: 0;
            left: 0;
            visibility: hidden;
            pointer-events: none;
        }

        label.radio span {
            padding: 1px 12px;
            border: 2px solid #ada9a9;
            display: inline-block;
            color: #8f37aa;
            border-radius: 3px;
            text-transform: uppercase;
            font-size: 11px;
            font-weight: 300;
        }

        label.radio input:checked+span {
            border-color: #fff;
            background-color: blue;
            color: #fff;
        }

        .credit-inputs {
            background: rgb(102, 102, 221);
            color: #fff !important;
            border-color: rgb(102, 102, 221);
        }

        .credit-inputs::placeholder {
            color: #fff;
            font-size: 13px;
        }

        .credit-card-label {
            font-size: 9px;
            font-weight: 300;
        }

        .form-control.credit-inputs:focus {
            background: rgb(102, 102, 221);
            border: rgb(102, 102, 221);
        }

        .line {
            border-bottom: 1px solid rgb(102, 102, 221);
        }

        .information span {
            font-size: 12px;
            font-weight: 500;
        }

        .information {
            margin-bottom: 5px;
        }

        .items {
            -webkit-box-shadow: 5px 5px 4px -1px rgba(0, 0, 0, 0.25);
            box-shadow: 5px 5px 4px -1px rgba(0, 0, 0, 0.08);
        }

        .spec {
            font-size: 11px;
        }

        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: 25px;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            cursor: pointer;
        }
    </style>
    <body>
        <div class="container mt-5 p-3 rounded cart">
            <div class="row no-gutters">
                <div class="col-md-8">
                    <div class="product-details mr-2">
                        <div class="d-flex flex-row align-items-center" style="cursor: pointer" ><i class="fa fa-long-arrow-left"></i>
                            <a class="ml-2" href="HomeControl">Continue Shopping</a>
                        </div>
                        <hr>
                        <h6 class="mb-0">Shopping cart</h6>
                        <div class="d-flex justify-content-between"><span>You have 4 items in your cart</span>
                            <div class="d-flex flex-row align-items-center"><span class="text-black-50">Sort by:</span>
                                <div class="price ml-2">
                                    <span class="mr-1">price</span>
                                    <i class="fa fa-angle-down" ></i>
                                </div>
                            </div>
                        </div>
                        <!--sản phẩm-->
                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                        <form action="DeleteControl" method="post">
                            <c:forEach var="o" items="${SHOP}">
                                <div class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
                                    <div class="d-flex flex-row"><img class="rounded" src="assets/imges/items/${o.value.sanpham.image}" width="40">
                                        <div class="ml-2"><span class="font-weight-bold d-block"></span>
                                            <span class="spec">${o.value.sanpham.name}</span>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row align-items-center">
                                        <span class="d-block">${o.value.quantity}</span>
                                        <span class="d-block ml-5 font-weight-bold">${o.value.sanpham.price}</span>
                                        <button type="submit" name="txtxoa" value="${o.value.sanpham.id}" style="border: none;background: none">
                                            <i class="fa fa-trash-o ml-3 text-black-50"></i>
                                        </button>
                                    </div>
                                </div>
                            </c:forEach>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="payment-info">
                        <div class="d-flex justify-content-between align-items-center"><span>Card details</span>
                            <img class="rounded" src="https://i.imgur.com/WU501C8.jpg" width="30">
                        </div><span class="type d-block mt-3 mb-1">Card type</span>
                        <label class="radio"> <input type="radio" name="card" value="payment" checked>
                            <span><img width="30" src="https://img.icons8.com/color/48/000000/mastercard.png" /></span> 
                        </label>

                        <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/visa.png" /></span> </label>

                        <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/ultraviolet/48/000000/amex.png" /></span> </label>


                        <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30" src="https://img.icons8.com/officel/48/000000/paypal.png" /></span> </label>
                        <div>
                            <label class="credit-card-label">Name on card</label>
                            <input type="text" class="form-control credit-inputs" placeholder="Name">
                        </div>
                        <div>
                            <label class="credit-card-label">Card number</label>
                            <input type="text" class="form-control credit-inputs" placeholder="0000 0000 0000 0000">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="credit-card-label">Date</label>
                                <input type="text" class="form-control credit-inputs" placeholder="12/24">
                            </div>
                            <div class="col-md-6">
                                <label class="credit-card-label">CVV</label>
                                <input type="text" class="form-control credit-inputs" placeholder="342">
                            </div>
                        </div>
                        <hr class="line">
                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                        <form action="SetGiaContriol" style="height: 130px">
                            <c:forEach var="o" items="${SHOP}">
                                <div class="d-flex justify-content-between information"><span>Subtotal</span><span>$${o.value.sanpham.price * o.value.quantity}</span>
                                </div>
                                <div class="d-flex justify-content-between information"><span>Shipping</span><span>$${20}</span>
                                </div>
                                <div class="d-flex justify-content-between information"><span>Total(Incl.taxes)</span><span>$${o.value.sanpham.price * o.value.quantity + 20}</span></div>
                                <button class="btn btn-primary btn-block d-flex justify-content-between mt-3" type="submit" name="txtpay" value="pay" >
                                    <span>$${o.value.sanpham.price * o.value.quantity + 20}</span>
                                    <span>Checkout<i class="fa fa-long-arrow-right ml-1"></i></span>
                                </button>
                            </c:forEach>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>