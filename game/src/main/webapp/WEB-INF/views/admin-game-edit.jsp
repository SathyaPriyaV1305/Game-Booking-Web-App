<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Edit Games</title>
</head>
<body>
    <h2>Edit</h2>
    <form action="${pageContext.request.contextPath}/admingames/update/${gameslist.id}" method="post" enctype="multipart/form-data">
        
        <!-- Game Name -->
        <label for="gamename">Game Name:</label>
        <input type="text" id="gamename" name="gameName"  value ="${gameslist.gameName}" required>
        <br><br>

        <label for="platform">Enter Supported Platforms:</label>
        <input type="text" id="platform" name="platform"  value ="${gameslist.platform}" required>
        <br><br>
       

        <!-- Specific Offer -->
        <label for="specificOffer">Specific Offer:</label>
        <input type="text" id="specificOffer" name="specificOffer" value = "${gameslist.specificOffer }" required>
        <br><br>

        <!-- Membership Offer -->
        <label for="membershipOffer">Membership Offer:</label>
        <input type="text" id="membershipOffer" name="membershipOffer" value  = "${gameslist.membershipOffer }" required>
        <br><br>

        <!-- Game Photo Upload -->
        <label for="gamePhoto">Game Photo:</label>
        <input type="file" id="gamePhoto" name="image1" accept="image/*" required>
        <br><br>

        <!-- Submit Button -->
        <button type="submit">Submit</button>
    </form>
</body>
</html>