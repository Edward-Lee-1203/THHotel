<%-- 
    Document   : booking
    Created on : Oct 2, 2020, 8:55:50 PM
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
        <c:forEach var="tempQuestion" items="${roomList}">
            <tr>
                <td>${tempQuestion.id}</td>
                <td>Num of room: ${tempQuestion.roomName}</td><br>
            </tr>
        </c:forEach>
            Booking code: ${booking.bookingCode}; - with deposit money ${amountOfMoney};
                                                                                                
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
