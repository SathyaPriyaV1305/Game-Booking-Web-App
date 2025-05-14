<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Games List</title>
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
            font-family: Arial, sans-serif;
            background-color: var(--bg-primary);
            color: var(--text-primary);
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h2#gamesListTitle {
            color: var(--color-secondary);
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
        }

        table#gamesTable {
            width: 90%;
            max-width: 1200px;
            border-collapse: separate;
            border-spacing: 0 10px;
            margin-top: 20px;
        }

        #tableHeader th {
            background-color: var(--color-primary);
            color: var(--text-primary);
            font-weight: bold;
            padding: 15px;
            text-align: left;
            border-radius: 5px 5px 0 0;
        }

        #tableBody tr {
            background-color: var(--bg-secondary);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        #tableBody tr:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(233, 69, 96, 0.2);
        }

        td, th {
            padding: 15px;
            border-bottom: 1px solid var(--color-primary);
            text-align: left;
            font-size: 0.95em;
        }

        #tableBody img {
            border-radius: 5px;
            max-width: 80px;
            max-height: 80px;
            object-fit: cover;
        }

        #tableBody td a {
            color: var(--text-primary);
            text-decoration: none;
            font-weight: bold;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
            display: inline-block;
            margin: 2px;
        }

        #tableBody td a#editLink {
            background-color: var(--color-primary);
        }

        #tableBody td a#deleteLink {
            background-color: var(--color-secondary);
        }

        #tableBody td a:hover {
            opacity: 0.8;
        }

        #addGameForm {
            margin-top: 30px;
            width: 90%;
            max-width: 1200px;
            display: flex;
            justify-content: flex-end;
        }

        button#addGameButton {
            background-color: var(--color-secondary);
            color: var(--text-primary);
            border: none;
            padding: 12px 20px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button#addGameButton:hover {
            background-color: #d3405b;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            table#gamesTable, thead#tableHeader, tbody#tableBody, th, td, tr#gameRow {
                display: block;
                width: 100%;
            }
            
            #tableHeader {
                display: none;
            }
            
            #tableBody tr#gameRow {
                margin-bottom: 20px;
                border: 1px solid var(--color-primary);
                border-radius: 8px;
                padding: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }
            
            td {
                text-align: right;
                padding-left: 50%;
                position: relative;
            }
            
            td::before {
                content: attr(data-label);
                position: absolute;
                left: 6px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
                font-weight: bold;
                text-align: left;
            }
            
            #tableBody img {
                max-width: 100%;
                height: auto;
            }
        }
    </style>
</head>
<body id="bodyContent">
    <h2 id="gamesListTitle">Games List</h2>
    
    <table id="gamesTable">
        <thead id="tableHeader">
            <tr id="headerRow">
                <th id="headerGameImage">Game Image</th>
                <th id="headerGameName">Game Name</th>
                <th id="headerPlatform">Platform(s)</th>
                <th id="headerSpecificOffer">Specific Offer</th>
                <th id="headerMembershipOffer">Membership Offer</th>
                <th id="headerActions">Actions</th>
            </tr>
        </thead>
        <tbody id="tableBody">
            <c:forEach var="game" items="${game}">
                <tr id="gameRow">
                    <td id="gameImageCell${game.id}" data-label="Game Image">
                        <c:if test="${not empty game.gameImage}">
                            <img src="data:${game.imageContentType};base64,${game.base64Image}" 
                                 alt="Game Image" 
                                 id="gameImage${game.id}">
                        </c:if>
                    </td>
                    <td id="gameName" data-label="Game Name">${game.gameName}</td>
                    <td id="gamePlatform" data-label="Platform(s)">${game.platform}</td>
                    <td id="specificOffer" data-label="Specific Offer">${game.specificOffer}</td>
                    <td id="membershipOffer" data-label="Membership Offer">${game.membershipOffer}</td>
                    <td id="actions${game.id}" data-label="Actions">
                        <a href="${pageContext.request.contextPath}/admingames/edit/${game.id}" id="editLink">Edit</a>
                        <a href="${pageContext.request.contextPath}/admingames/delete/${game.id}" id="deleteLink">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <form action="${pageContext.request.contextPath}/admingames/adminlist" id="addGameForm">
        <button type="submit" id="addGameButton">AddGame+</button>
    </form>
</body>
</html>