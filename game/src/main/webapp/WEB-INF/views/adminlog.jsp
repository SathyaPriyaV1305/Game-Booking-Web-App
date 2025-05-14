<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>

<style>
        /* General page styles */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4a90e2, #50c878);
            color: #333;
        }

        h2 {
            text-align: center;
            color: #4a90e2;
            font-size: 2em;
            margin-bottom: 1em;
        }

        /* Form container */
        form {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 2em;
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }

        /* Input and label styling */
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 0.8em;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 1em;
            font-size: 1em;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        /* Button styling */
        button[type="submit"] {
            width: 100%;
            padding: 0.8em;
            background-color: #4a90e2;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #3a78c2;
        }

        /* Error message styling */
        p {
            color: #e74c3c;
            font-weight: bold;
            text-align: center;
            margin-top: 1em;
        }
    </style>
    
<body>
<h2>Login</h2>
    <form action="${pageContext.request.contextPath}/admindetails/adminland2" method="post">
        <label>Username:</label>
        <input type="text" name="adminUsername" required>
        
        <label>Password:</label>
        <input type="password" name="adminPassword" required>

        <button type="submit">Login</button>
    </form>

    <c:if test="${not empty error}">
        <p>${error}</p>
    </c:if>
</body>
</html>