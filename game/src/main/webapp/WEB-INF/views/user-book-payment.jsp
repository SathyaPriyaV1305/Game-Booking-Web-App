<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Page</title>
</head>
<body>
<h2>Amount Payed Successfully</h2><br>
<h3>You Booked Your Play Time Slot</h3>
<h4>Console Name - ${userbooking.consoleName}</h4>
<h4>Game Name - ${userbooking.gname}</h4>
<h4>Play Time from ${userbooking.playTimeFrom}</h4>
<h4>Total Play Time${userbooking.playTime} Hr</h4>
<h4>Amount Payed - ${userbooking.amountPayed}</h4><br>

<form action="${pageContext.request.contextPath}/games/landpage3/${username}" id="form3">
        <button type="submit" id="but3">Return Home</button>
    </form>
</body>
</html>