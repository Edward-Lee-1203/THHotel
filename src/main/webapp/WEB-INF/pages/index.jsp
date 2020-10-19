<%-- 
    Document   : index
    Created on : Oct 2, 2020, 7:19:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
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
                        <a href="booking.html" class="primary-btn">Make a Reservation</a>
                    </div>
                    <nav class="main-menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./about-us.html">About</a></li>
                            <li><a href="rooms.html">Rooms</a></li>
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
        <section class="hero-area set-bg" data-setbg="<c:url value="/resources/img/hero-bg.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="hero-text">
                            <h1>A Luxury Stay</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Area Section End -->

        <!-- Search Filter Section Begin -->
        <section class="search-filter">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <form action="availableRoom" class="check-form" method="get">
                            <h4>Check Availability</h4>
                            <div class="datepicker">
                                <p>From</p>
                                <input type="text" id="timeIn" name="timeIn" class="datepicker-1" value="dd / mm / yyyy">
                                <img src="img/calendar.png" alt="">
                            </div>
                            <div class="datepicker">
                                <p>To</p>
                                <input type="text" id="timeOut" name="timeOut" class="datepicker-2" value="dd / mm / yyyy">
                                <img src="img/calendar.png" alt="">
                            </div>
                            <div class="room-quantity">
                                <div class="single-quantity">
                                    <p>Adults</p>
                                    <div class="pro-qty"><input type="text" id="numOfAdult" name="numOfAdult" value="0"></div>
                                </div>
                                <div class="single-quantity" style="margin-right: 28px;">
                                    <p>Children</p>
                                    <div class="pro-qty"><input type="text" id="numOfChild" name="numOfChild" value="0"></div>
                                </div>
                                <div class="single-quantity last">
                                    <p>Rooms</p>
                                    <div class="pro-qty"><input type="text" id="numOfRoom" name="numOfRoom" value="0"></div>
                                </div>
                            </div>
                            <input type="hidden" id="price" name="price" value="0">
                            <input type="hidden" id="roomTypeId" name="roomTypeId" value="0">
                            <button type="submit" id="btn">Let's check available ROOM</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Search Filter Section End -->

        <!-- Intro Text Section Begin -->
        <section class="intro-section spad">
            <div class="container">
                <div class="row intro-text">
                    <div class="col-lg-6">
                        <div class="intro-left">
                            <div class="section-title">
                                <span>a memorable holliday</span>
                                <h2>A great stay in a<br /> lovely hotel.</h2>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
                                viverra maecenas. Donec in sodales dui, a blandit nunc. Pellentesque id eros venenatis,
                                sollicitudin neque sodales, vehicula nibh. Nam massa odio, porttitor vitae efficitur non,
                                ultricies volutpat tellus.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="intro-right">
                            <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                                dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra.</p>
                            <a href="#" class="primary-btn">Make a Reservation</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Intro Text Section End -->

        <!-- Facilities Section Begin -->
        <section class="facilities-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="facilities-item set-bg" data-setbg="<c:url value="/resources/img/faci-1.jpg"/>">
                            <div class="fi-title">
                                <h2>Luxury Suite Room</h2>
                                <p>From $399</p>
                            </div>
                            <div class="fi-features">
                                <div class="fi-info">
                                    <i class="flaticon-019-television"></i>
                                    <p>Smart TV</p>
                                </div>
                                <div class="fi-info">
                                    <i class="flaticon-029-wifi"></i>
                                    <p>High Wi-fii</p>
                                </div>
                                <div class="fi-info">
                                    <i class="flaticon-003-air-conditioner"></i>
                                    <p>AC</p>
                                </div>
                                <div class="fi-info">
                                    <i class="flaticon-036-parking"></i>
                                    <p>Parking</p>
                                </div>
                                <div class="fi-info">
                                    <i class="flaticon-007-swimming-pool"></i>
                                    <p>Pool</p>
                                </div>
                            </div>
                            <a href="#" class="primary-btn">Make a Reservation</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="facilities-item set-bg fi-right" data-setbg="<c:url value="/resources/img/faci-2.jpg"/>">
                            <div class="fi-title">
                                <h2>Infinity Pool</h2>
                                <p>For all our guests</p>
                            </div>
                            <a href="#" class="primary-btn">Make a Reservation</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Facilities Section End -->

        <!-- Testimonial Section Begin -->
        <section class="testimonial-section spad">
            <div class="container">
                <div class="row">
                    <div class="section-title">
                        <h2>Guestbook</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="testimonial-item">
                            <div class="ti-time">
                                02 / 02 / 2019
                            </div>
                            <h4>We loved our stay</h4>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiselit. Vivamus libero mauris, bibendum eget
                                sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare.</p>
                            <div class="ti-author">
                                <div class="author-pic">
                                    <img src="<c:url value="/resources/img/author-1.png"/>" alt="">
                                </div>
                                <div class="author-text">
                                    <h6>JOHN DOE <span>Madrid</span></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial-item">
                            <div class="ti-time">
                                02 / 02 / 2019
                            </div>
                            <h4>I will come back again</h4>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>Ipsum dolor sit amet, consectetur adipiselit. Vivamus libero mauris, bibendum eget sapien ac,
                                ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare.</p>
                            <div class="ti-author">
                                <div class="author-pic">
                                    <img src="<c:url value="/resources/img/author-2.png"/>" alt="">
                                </div>
                                <div class="author-text">
                                    <h6>Maria Smith <span>Madrid</span></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section End -->

        <!-- Video Section Begin -->
        <div class="video-section">
            <div class="video-bg set-bg" data-setbg="<c:url value="/resources/img/video-bg.jpg"/>"></div>
            <div class="container">
                <div class="video-text set-bg" data-setbg="<c:url value="/resources/img/video-inside-bg.jpg"/>">
                    <a href="https://www.youtube.com/watch?v=j56YlCXuPFU" class="pop-up"><i class="fa fa-play"></i></a>
                </div>
            </div>
        </div>
        <!-- Video Section End -->

        <!-- Home Page About Section Begin -->
        <section class="homepage-about spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="about-text">
                            <div class="section-title">
                                <h2>“Customers love our <br />facilities”</h2>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus libero mauris, bibendum eget
                                sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare. Morbi vel
                                ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Suspendisse maximus
                                malesuada. </p>
                            <a href="#" class="primary-btn">Make a Reservation</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="about-img">
                                    <img src="<c:url value="/resources/img/home-about-1.jpg"/>" alt="">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="about-img">
                                    <img src="<c:url value="/resources/img/home-about-2.jpg"/>" alt="">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="about-img">
                                    <img src="<c:url value="/resources/img/home-about-3.jpg"/>" alt="">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="about-img">
                                    <img src="<c:url value="/resources/img/home-about-4.jpg"/>" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Home Page About Section End -->

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
