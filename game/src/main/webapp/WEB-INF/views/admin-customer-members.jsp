<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Members</title>
</head>
<body>

    <h2>Customer Members</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Mobile No</th>
                <th>Mail id</th>
                <th>Membership Details</th>
                <th>Membership Duration</th>
                <th>Membership Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="usermem" items="${usermem}">
                <tr>
                    <td>${usermem.username}</td>
                    <td>${usermem.mobileNo}</td>
                    <td>${usermem.mail}</td>
                    <td>${usermem.membershipDetails}</td>
                    <td>${usermem.membershipDuration}</td>
                   	<td>${usermem.membershipPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
