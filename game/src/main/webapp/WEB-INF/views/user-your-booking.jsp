<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Bookings</title>
</head>
<body id="bodyContent">
    <h2 id="YourBooking">Your Bookings</h2>
    
   
    <h3>consoleName - ${bookinglist.consoleName}</h3>
    <h3>gname - ${bookinglist.gname}</h3>
    <h3>specificOffer - ${bookinglist.playTimeFrom}</h3>
    <h3>membershipOffer - ${bookinglist.playTime} hrs</h3>
    <h3>membershipOffer - ${bookinglist.amountPayed}</h3>

</body>
</html>