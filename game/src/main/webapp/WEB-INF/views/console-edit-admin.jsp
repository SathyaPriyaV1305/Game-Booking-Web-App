<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Console Details Admin</title>
</head>
<body>

    <h2>Console Details</h2>
    <form action="${pageContext.request.contextPath}/consoles/update/${console.id}" method="post">

        <!-- String consoleName -->
        <label for="consoleName">Console Name:</label>
        <input type="text" id="consoleName" name="consoleName" value = "${console.consoleName}" required><br><br>

        <!-- Float pricePerHour -->
        <label for="pricePerHour">Price Per Hour:</label>
        <input type="number" id="pricePerHour" name="pricePerHour" value = "${console.pricePerHour}" required><br><br>

        <!-- Float membershipOffer -->
        <label for="membershipOffer">Membership Offer (%):</label>
        <input type="number" id="membershipOffer" name="membershipOffer" value = "${console.membershipOffer}" ><br><br>

        <button type="submit">Submit</button>
    </form>

</body>
</html>
