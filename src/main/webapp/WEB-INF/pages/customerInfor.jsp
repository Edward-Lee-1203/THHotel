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
    
    
    
    <div class="contain-fluid mb-3" style="background-color: ">
        <div class="container p-0 mt-3">
            <c:if test="${check == 1}">
                <h3 style="color: red;">Please check your creadit card information</h3>
            </c:if>
            <div class="row">
                <div class="col-md-7 p-0">
                    <form:form class="form-horizontal p-3" style="border: 2px solid #F9AD81" modelAttribute="customer" action="payment">
                        <div class="contactInfor" style="border-bottom: 2px solid #F9AD81; margin-bottom: 10px;">
                            <h2>Contact Infor</h2><br>
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="firstName" class="col-sm-12 control-label">First Name</label>
                                    <div class="col-sm-12">
                                        <form:input path="name" type="text" required="true" placeholder="First name" class="form-control"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName" class="col-sm-12 control-label">Last Name</label>
                                    <div class="col-sm-12">
                                    <form:input path="" type="text" id="lastName" placeholder="Last Name" class="form-control"></form:input>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="email" class="col-sm-12 control-label">Email* </label>
                                <div class="col-sm-9">
                                <form:input type="email" id="email" path="email" placeholder="Email" class="form-control" name= "email"></form:input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-sm-12 control-label">Address*</label>
                                <div class="col-sm-9">
                                <form:input type="text" path="address" id="password" placeholder="Address" class="form-control"></form:input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-sm-12 control-label">Phone number*</label>
                                <div class="col-sm-9">
                                <form:input type="text" path="phoneNumber" id="password" placeholder="Phone number" class="form-control"></form:input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Gender</label>
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <label class="radio-inline">
                                            <form:radiobutton id="femaleRadio" path="gender" value="Female"/> Female
                                            </label>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="radio-inline">
                                                <form:radiobutton id="maleRadio" value="Male" path="gender"/> Male
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.form-group -->
                        </div>
                        <div class="payment">
                            <h2>Payment Infor</h2><br>
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="email" class="col-sm-12 control-label">Card Number* </label>
                                    <div class="col-sm-12">
                                        <form:input type="number" placeholder="Card Number" class="form-control" path="creditCard"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="password" class="col-sm-12 control-label">Name On Card*</label>
                                    <div class="col-sm-12">
                                        <input type="text" name="nameOnCard" id="nameOnCard" placeholder="Name On Card" class="form-control"/>
                                    </div>
                                </div>                        
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="recipient-name" class="col-form-label">Amount of money:</label>
                                    <input type="text" value="${total}" class="form-control" id="amountOfMoney" name="amountOfMoney">
                                </div>
                                <div class="col-md-6">
                                    <label for="message-text" class="col-form-label">Payment code:</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>     
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary align-middle" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Confirm</button>

                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Payment form</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Confirm payment</button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </form:form>
                </div>    <!-- /form --><!-- ends col-6 -->

                <div class="col-md-5">

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
                                    <fmt:formatDate value="${reserList.get(1).checkinDate}" type="both" pattern="yyyy-MM-dd" />
                                    <span>After</span> 
                                    <!-- -->14:00PM
                                </div>
                                <div class="reservation-cart-container_checkOut"><b>
                                    <span>Check-out</span></b>
                                    <fmt:formatDate value="${reserList.get(1).checkoutDate}" type="both" pattern="yyyy-MM-dd" />
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
                                        <h4 class="mb-1">Room ${temp.getRoomEntity().roomName}</h4>
                                        <div class="reservation-cart-container-infor">
                                            <div class="mt-1">
                                                <span style="font-size: 25px;">${temp.getRoomEntity().getRoomTypeEntity().roomType}</span>
                                                <span class="float-right mt-1"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${temp.price}" /></span>
                                            </div>
                                            <div class="mt-2 mb-2">
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
                                </div>
                                </div>
                            </div>
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
