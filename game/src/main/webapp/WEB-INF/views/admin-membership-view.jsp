<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Membership Information List</title>
</head>
<body>

    <h2>Admin Membership Information List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Membership Name</th>
                <th>Duration</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="adminMemInfo" items="${adminMemInfoList}">
                <tr>
                    <td>${adminMemInfo.membershipName}</td>
                    <td>${adminMemInfo.duration}</td>
                    <td>${adminMemInfo.price}</td>
                   	<td id="actions${adminMemInfo.id}">
                        <a href="${pageContext.request.contextPath}/membership/edit/${adminMemInfo.id}" id="editLink">Edit</a>
                        <a href="${pageContext.request.contextPath}/membership/delete/${adminMemInfo.id}" id="deleteLink">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
