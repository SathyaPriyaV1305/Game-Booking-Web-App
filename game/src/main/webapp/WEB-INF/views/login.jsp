<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
/* General page styles */
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #1a1a2e, #16213e);
    color: #e6e6fa;
}

/* Form container */
.login-container {
    width: 100%;
    max-width: 400px;
}

h2 {
    text-align: center;
    color: #ccccff;
    font-size: 2em;
    margin-bottom: 1em;
    text-shadow: 0 0 10px rgba(204, 204, 255, 0.3);
}

/* Form styling */
form {
    background: #2a2a4a;
    border-radius: 8px 8px 0 0;
    box-shadow: 0 4px 20px rgba(204, 204, 255, 0.2);
    padding: 2em;
    width: 100%;
    box-sizing: border-box;
    border: 1px solid rgba(204, 204, 255, 0.1);
    border-bottom: none;
}

/* Input and label styling */
label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #ccccff;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 0.8em;
    background: #1a1a2e;
    border: 1px solid #4a4a8a;
    border-radius: 4px;
    margin-bottom: 1em;
    font-size: 1em;
    box-sizing: border-box;
    transition: all 0.3s;
    color: #e6e6fa;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #8e8ec6;
    outline: none;
    box-shadow: 0 0 10px rgba(142, 142, 198, 0.3);
}

/* Button styling */
button[type="submit"] {
    width: 100%;
    padding: 0.8em;
    background-color: #6b6baa;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    cursor: pointer;
    transition: all 0.3s;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-bottom: 0;
}

button[type="submit"]:hover {
    background-color: #8e8ec6;
    box-shadow: 0 0 15px rgba(142, 142, 198, 0.4);
}

/* Error message styling */
.error-container {
    background: #2a2a4a;
    border-radius: 0 0 8px 8px;
    border: 1px solid rgba(204, 204, 255, 0.1);
    border-top: none;
    padding: 1em;
    margin-top: 0;
    text-align: center;
}

.error-message {
    color: #ff9999;
    font-weight: bold;
    margin: 0;
    padding: 0.5em;
    text-shadow: 0 0 10px rgba(255, 153, 153, 0.3);
}

/* Placeholder text color */
::placeholder {
    color: #8e8ec6;
    opacity: 0.7;
}
</style>
</head>
<body>
<div class="login-container">
    <form action="${pageContext.request.contextPath}/games/landpage2" method="post">
        <h2>Login</h2>
        
        <label>Username:</label>
        <input type="text" name="username" required placeholder="Enter your username">

        <label>Password:</label>
        <input type="password" name="password" required placeholder="Enter your password">

        <button type="submit">Login</button>
    </form>

    <c:if test="${not empty error}">
        <div class="error-container">
            <p class="error-message">${error}</p>
        </div>
    </c:if>
</div>
</body>
</html>