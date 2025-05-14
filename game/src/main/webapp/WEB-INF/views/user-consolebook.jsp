<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Console List</title>
</head>
<body>

    <h2>Console List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Console Name</th>
                <th>Price Per Hour</th>
                <th>Membership Offer (%)</th>
                <th>Book</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="console" items="${console}">
                <tr>
                    <td>${console.consoleName}</td>
                    <td>${console.pricePerHour}</td>
                    <td>${console.membershipOffer}</td>
                    <td id="actions${console.id}">
                        <a href="${pageContext.request.contextPath}/consoles/book/${console.id}/${username}" id="book">Book</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
