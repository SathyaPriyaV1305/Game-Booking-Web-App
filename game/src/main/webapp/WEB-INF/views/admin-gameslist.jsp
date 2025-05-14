<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Games List</title>
    <style>
        :root {
            --bg-primary: #1a1a2e;
            --bg-secondary: #16213e;
            --color-primary: #0f3460;
            --color-secondary: #e94560;
            --text-primary: #ffffff;
            --text-secondary: #a9a9a9;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--bg-primary);
            color: var(--text-primary);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background-color: var(--bg-secondary);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 500px;
        }

        h2 {
            color: var(--color-secondary);
            text-align: center;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--text-secondary);
        }

        input[type="text"],
        input[type="file"] {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid var(--color-primary);
            background-color: var(--bg-primary);
            color: var(--text-primary);
            border-radius: 5px;
            font-size: 1rem;
        }

        input[type="file"] {
            padding: 0.5rem;
        }

        input[type="file"]::-webkit-file-upload-button {
            background-color: var(--color-primary);
            color: var(--text-primary);
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button {
            background-color: var(--color-secondary);
            color: var(--text-primary);
            padding: 0.75rem;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #d3405b;
        }

        @media (max-width: 768px) {
            .container {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Games to the list to show the customers</h2>
        <form action="${pageContext.request.contextPath}/admingames/gamedata" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="gamename">Game Name:</label>
                <input type="text" id="gamename" name="gameName" value="${gameslist.gameName}" required>
            </div>

            <div class="form-group">
                <label for="platform">Enter Supported Platforms:</label>
                <input type="text" id="platform" name="platform" value="${gameslist.platform}" required>
            </div>

            <div class="form-group">
                <label for="specificOffer">Specific Offer:</label>
                <input type="text" id="specificOffer" name="specificOffer" value="${gameslist.specificOffer}" required>
            </div>

            <div class="form-group">
                <label for="membershipOffer">Membership Offer:</label>
                <input type="text" id="membershipOffer" name="membershipOffer" value="${gameslist.membershipOffer}" required>
            </div>

            <div class="form-group">
                <label for="gamePhoto">Game Photo:</label>
                <input type="file" id="gamePhoto" name="image1" accept="image/*" required>
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>