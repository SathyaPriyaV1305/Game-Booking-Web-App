<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/userbookingdetails/save/${id}/${username}" method="post" enctype="multipart/form-data">
      
        <label for="gname">Game Name:</label>
        <input type="text" id="gname" name="gname" value="${userbookings.gname}" required/><br/>
        
        <label for="playtimefrom">Play Time From:</label>
        <input type="time" id="playtimefrom" name="playTimeFrom" value="${userbookings.playTimeFrom}" required/><br/>
        
        <label for="playtime">Play Time:</label>
        <input type="number" id="playtime" name="playTime" value="${userbookings.playTime}" required/><br/>
        

        <input type="submit" value="Book"/>
    </form>
</body>
</html>