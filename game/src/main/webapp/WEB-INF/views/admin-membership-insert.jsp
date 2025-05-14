<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Admin Membership Information</title>
</head>
<body>

    <h2>Add Admin Membership Information</h2>
    <form action="${pageContext.request.contextPath}/membership/save" method="post">
        
        <!-- String membershipName -->
        <label for="membershipName">Membership Name:</label>
        <input type="text" id="membershipName" name="membershipName" value = "${memInfo.membershipName}" required><br><br>

        <!-- String duration -->
        <label for="duration">Duration(how many months):</label>
        <input type="text" id="duration" name="duration"  value = "${memInfo.duration}" required><br><br>

        <!-- String price -->
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" value = "${memInfo.price}" required><br><br>

        <button type="submit">Submit</button>
    </form>

</body>
</html>
