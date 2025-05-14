<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book My Game</title>
</head>
<style>
/* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
    padding: 50px 0;
}

/* Style the links to look like buttons */
#custreg, #adminreg {
    display: inline-block;
    padding: 15px 30px;
    margin: 10px;
    font-size: 18px;
    font-weight: bold;
    text-decoration: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #ffffff;
    transition: all 0.3s ease;
}

/* Hover Effect for Links */
#custreg:hover, #adminreg:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

/* Style for active state when clicking the links */
#custreg:active, #adminreg:active {
    background-color: #003366;
}

/* Add a little extra spacing between the two links */
#custreg {
    margin-right: 20px;
}

/* Styling for the links in case they are on mobile devices (Responsive design) */
@media (max-width: 600px) {
    body {
        padding: 20px;
    }

    #custreg, #adminreg {
        width: 100%;
        margin: 10px 0;
    }
}

</style>
<body>

<a href = "/game/games/new" id ="custreg">Customer Login</a>
<a href = "/game/admindetails/admin" id = "adminreg" >Admin Login</a>

</body>
</html>