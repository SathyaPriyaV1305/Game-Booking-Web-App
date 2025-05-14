<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Payment Page</title>
</head>
<body>
<h2>Amount Payed Successfully</h2><br>
<h3>Your Membership Details</h3>
<h4>username - ${memDetail.username}</h4><br>
<h4>Membership Name - ${memDetail.membershipDetails}</h4>
<h4>Membership Duration - ${memDetail.membershipDuration}</h4>
<h4>Membership Price - ${memDetail.membershipPrice}</h4>



<form action="${pageContext.request.contextPath}/games/landpage3/${username}" id="form3">
        <button type="submit" id="but3">Return Home</button>
    </form>
</body>
</html>