<%-- 
    Document   : customerInfor
    Created on : Oct 10, 2020, 10:00:39 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Europa Hotel & Spa | Template</title>

        <!-- Google Font -->
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"/>" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/flaticon.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/nice-select.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/slicknav.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/css/style1.css"/>" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./index.html"><img src="<c:url value="/resources/img/logo.png"/>" alt=""></a>
                </div>
                <div class="nav-right">
                    <a href="#" class="primary-btn">Make a Reservation</a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a href="./index.html">Home</a></li>
                        <li><a href="./about-us.html">About</a></li>
                        <li class="active"><a href="rooms.html">Rooms</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="drop-menu">
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="rooms.html">Rooms</a></li>
                                <li><a href="services.html">Services</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">News</a></li>
                        <li><a href="./contact.html">Contact</a></li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Area Section Begin -->
    <div class="hero-area set-bg other-page" data-setbg="<c:url value="/resources/img/about_bg.jpg"/>">
    </div>
    
    
    
    <div class="container pt-5 pb-5">
        <div class="d-flex justify-content-center">
            <i class="fa fa-check" style="height: 150px;color: white;border-radius: 50%;background-color: green;width: 150px;padding-left: 25px;padding-top: 25px;font-size: 100px;" aria-hidden="true"></i>
        </div>
        <h1 class="d-flex justify-content-center">Thank for your choice!!!</h1>
        <h3 class="d-flex justify-content-center text-center">THUAN HOANG Company is very pleased to serve you.</h3>
        <p class="d-flex justify-content-center text-center">Your booking with <span class="font-weight-bold pl-1 pr-1"> ${amountOfMoney} VNĐ </span> upfront is success.Here is your booking code <span class="font-weight-bold pl-1 pr-1"> ${booking.bookingCode} </span>. For more information please check your email.</p>
        
    </div>
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer-item">
                        <div class="footer-logo">
                            <a href="#"><img src="<c:url value="/resources/img/logo.png"/>" alt=""></a>
                        </div>
                        <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer-item">
                        <h5>Newsletter</h5>
                        <div class="newslatter-form">
                            <input type="text" placeholder="Your Email Here">
                            <button type="submit">Subscribe</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer-item">
                        <h5>Contact Info</h5>
                        <ul>
                            <li><img src="<c:url value="/resources/img/placeholder.png"/>" alt="">1525 Boring Lane,<br />Los Angeles, CA</li>
                            <li><img src="<c:url value="/resources/img/phone.png"/>" alt="">+1 (603)535-4592</li>placeholder.png
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Rooms</a></li>
                            <li><a href="#">Facilities</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-lg-12 ">
                        <div class="small text-white text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.nice-select.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.slicknav.js"/>"></script>
    <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/js/main.js"/>"></script>    
</body>

</html>
