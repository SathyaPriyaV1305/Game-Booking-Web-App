<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Page</title>
</head>
<body>
<h2>Your Membership Details</h2>
<h4>Membership name -${memInfo.membershipName}</h4>
<h4>Membership Duration -${memInfo.duration}</h4>
<h4>Membership price - ${memInfo.price}</h4><br>
<form action="${pageContext.request.contextPath}/payment/complete/${memInfo.id}/${username}" id="form3">
        <button type="submit" id="but3">Buy Membership</button>
    </form>
</body>
</html>