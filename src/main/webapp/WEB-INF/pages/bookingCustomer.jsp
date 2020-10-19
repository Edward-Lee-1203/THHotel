<%-- 
    Document   : bookingCustomer
    Created on : Oct 7, 2020, 2:40:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>Ư
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
        <!-- Hero Area Section End -->

        <!-- Search Filter Section Begin -->
        <section class="search-filter other-page-filter">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="#" class="check-form">
                            <h4>Check Availability</h4>
                            <div class="datepicker">
                                <p>From</p>
                                <input type="text" class="datepicker-1" value="dd / mm / yyyy">
                                <img src="<c:url value="/resources/img/calendar.png"/>" alt="">
                            </div>
                            <div class="datepicker">
                                <p>To</p>
                                <input type="text" class="datepicker-2" value="dd / mm / yyyy">
                                <img src="<c:url value="/resources/img/calendar.png"/>" alt="">
                            </div>
                            <div class="room-quantity">
                                <div class="single-quantity">
                                    <p>Adults</p>
                                    <div class="pro-qty"><input type="text" value="0"></div>
                                </div>
                                <div class="single-quantity">
                                    <p>Children</p>
                                    <div class="pro-qty"><input type="text" value="0"></div>
                                </div>
                                <div class="single-quantity last">
                                    <p>Rooms</p>
                                    <div class="pro-qty"><input type="text" value="0"></div>
                                </div>
                            </div>

                            <button type="submit" id="btn">Let's check available ROOM</button>
                        </form>                
                    </div>
                </div>
            </div>
        </section>
        <!-- Search Filter Section End -->

        <section class="container-fluid p-0">
            <div class="row">
                <div class="col-lg-9 col-md-9 p-0">
                    <!-- Room Section Begin -->
                    <section class="room-section" style="margin: 30px 0 20px 30px; padding: 20px; border: 5px outset #F9AD81;">
                        <div class="container-fluid">
                             <c:forEach var="temp" items="${roomTypeList}">
                                <c:url var="addRoomLink" value="addRoom">
                                    <c:param name="timeInStr" value="${timeInStr}" />
                                    <c:param name="timeOutStr" value="${timeOutStr}" /> 
                                    <c:param name="price" value="${temp.price}" />
                                    <c:param name="roomTypeId" value="${temp.id}" />
                                </c:url>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <img src="<c:url value="/resources/img/rooms/room-1.jpg"/>">
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="ri-text">
                                            <div class="section-title">
                                                <div class="section-title">
                                                    <span>a memorable holliday</span>
                                                    <h2>${temp.roomType}</h2>
                                                    <c:choose>
                                                        <c:when test="${temp.amountOfRoom <= 0}">
                                                            <h3 class="room-price"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${temp.price}" />đ <span style="font-size: 16; color: red;">None available room</span></h3>
                                                        </c:when>                                                       
                                                        <c:otherwise>
                                                            <h3 class="room-price"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${temp.price}" />đ / ${temp.amountOfRoom} available room</h3>
                                                        </c:otherwise>
                                                   </c:choose>
                                                </div>
                                                <div class="ri-features">
                                                    <div class="ri-info">
                                                        <i class="flaticon-019-television"></i>
                                                        <p>Smart TV</p>
                                                    </div>
                                                    <div class="ri-info">
                                                        <i class="flaticon-029-wifi"></i>
                                                        <p>High Wi-fii</p>
                                                    </div>
                                                    <div class="ri-info">
                                                        <i class="flaticon-003-air-conditioner"></i>
                                                        <p>AC</p>
                                                    </div>
                                                    <div class="ri-info">
                                                        <i class="flaticon-036-parking"></i>
                                                        <p>Parking</p>
                                                    </div>
                                                    <div class="ri-info">
                                                        <i class="flaticon-007-swimming-pool"></i>
                                                        <p>Pool</p>
                                                    </div>
                                                </div>
                                                <p>${temp.description}</p>
                                                <c:choose>
                                                    <c:when test="${temp.amountOfRoom <= 0}"> 
                                                        <a href="#" class="primary-btn" data-toggle="modal" data-target="#exampleModal">Make a Reservation</a>
                                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <p>Your choose don't have available room. Please choose another ROOM</p>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Continue Booking</button>
                                                                    </div>
                                                              </div>
                                                            </div>
                                                        </div>                                                
                                                    </c:when>                                                       
                                                    <c:otherwise>
                                                        <a href="${addRoomLink}" id="myBtn" class="primary-btn">Make a Reservation</a>
                                                    </c:otherwise>
                                                </c:choose>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>                                                                        
                            </c:forEach>
                        </div>
                    </section>
                    <!-- Room Section End -->
                </div>
                <div class="col-lg-3 col-md-3" style="padding: 30px;">
                    <div class="reservation-cart-container_inner">
                        <div class="reservation-cart-container_body">
                            <div class="reservation-cart-container_header">
                                <h2 class="app_heading1">
                                    <span>Your Stay</span>
                                </h2>

                            </div>
                            <div class="reservation-cart-container_hotelDetails">
                                <div class="reservation-cart-container_checkIn"><b>
                                    <span>Check-in</span></b>
                                    <fmt:formatDate value="${reserList.get(1).checkinDate}" type="both" pattern="yyyy-MM-dd" /><br>
                                    <span>After</span> 
                                    <!-- -->14:00PM
                                </div>
                                <div class="reservation-cart-container_checkOut"><b>
                                    <span>Check-out</span></b>
                                    <fmt:formatDate value="${reserList.get(1).checkoutDate}" type="both" pattern="yyyy-MM-dd" /><br>
                                    <span>Before</span>
                                    <!-- -->11:00AM
                                </div>
                                <button style="width: 100px;" aria-label="Close" class="reservation-cart-container_close mb-3"></button>
                            </div>
                            <div class="reservation-cart-container_summary">
                            <c:forEach var="temp" items="${reserList}">
                                <c:if test="${temp.id%2 == 1}">
                                    <div class="reservation-cart-container_summary" style="padding: 10px; background-color: lightgoldenrodyellow; border-bottom: 2px dashed;">
                                </c:if> 
                                <c:if test="${temp.id%2 == 0}">
                                    <div class="reservation-cart-container_summary" style="padding: 10px; border-bottom: 2px dashed;">
                                </c:if>
                                    <h4 class="mb-2">Room ${temp.getRoomEntity().roomName}</h4>
                                    <div class="reservation-cart-container-infor">
                                        <div class="mt-1">
                                            <span style="font-size: 25px;">${temp.getRoomEntity().getRoomTypeEntity().roomType}</span>
                                            <span class="float-right mt-1"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${temp.price}" /></span>
                                        </div>
                                        <div class="mt-2 mb-3">
                                            <span>Taxes and Fees</span>
                                            <span class="float-right"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${temp.price*15/100}" /></span>
                                            <select style="border-color: transparent; display: block; width: 80px; font-size: 14px; color: blue;">
                                                <option value="" disabled selected>Detail</option>
                                                <option disabled value="">VAT(10%)</option>
                                                <option disabled value="">Service Charge (5%)</option>
                                            </select>
                                        </div>  
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="price-summary_container">
                                <div class="price-summary_totalPrice">
                                    <div class="price-summary_total" style="font-size: 30px; padding: 10px">
                                        <span>Total: </span>
                                        <span class="float-right"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${total}" /></span>
                                    </div>
                                </div>
                                <button><a href="customerInfor">BOOK NOW</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Footer Section Begin -->
        <footer class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-item">
                            <div class="footer-logo">
                                <a href="#"><img src="<c:url value="/resources/img/logo.png"/>" alt=""></a>
                            </div>
                            <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                                dolore magna aliqua.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer-item">
                            <h5>Newsletter</h5>
                            <div class="newslatter-form">
                                <input type="text" placeholder="Your Email Here">
                                <button type="submit">Subscribe</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer-item">
                            <h5>Contact Info</h5>
                            <ul>
                                <li><img src="<c:url value="/resources/img/placeholder.png"/>" alt="">1525 Boring Lane,<br />Los Angeles, CA</li>
                                <li><img src="<c:url value="/resources/img/phone.png"/>" alt="">+1 (603)535-4592</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">

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
                        <div class="col-md-12 ">
                            <div class="small text-white text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->                                       
        
    </body> 
    <!-- Js Plugins -->
        <script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
        <script src="<c:url value="/resources/s/jquery-ui.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.nice-select.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.slicknav.js"/>"></script>
        <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/resources/js/main.js"/>"></script>
</html>

