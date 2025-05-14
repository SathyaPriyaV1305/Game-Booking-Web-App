<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Games List</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        /* General styling */
        body {
            font-family: 'Inter', Arial, sans-serif;
            background-color: #1a1a2e;
            color: #e6e6fa;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h2#gamesListTitle {
            color: #e6e6fa;
            font-size: 2.2em;
            margin-bottom: 30px;
            text-shadow: 0 0 10px rgba(71, 60, 139, 0.5);
            letter-spacing: 1px;
        }

        /* Table styling */
        table#gamesTable {
            width: 90%;
            max-width: 1200px;
            border-collapse: separate;
            border-spacing: 0;
            box-shadow: 0 0 20px rgba(71, 60, 139, 0.3);
            border-radius: 12px;
            overflow: hidden;
            background-color: #252547;
        }

        #tableHeader th {
            background-color: #473C8B;
            color: #e6e6fa;
            font-weight: 600;
            padding: 16px 20px;
            text-align: left;
            border-bottom: 2px solid #5a4eb1;
            text-transform: uppercase;
            font-size: 0.9em;
            letter-spacing: 1px;
        }

        #tableBody tr {
            transition: background-color 0.3s ease;
        }

        #tableBody tr:nth-child(even) {
            background-color: #2a2a4d;
        }

        #tableBody tr:hover {
            background-color: #353564;
        }

        td, th {
            padding: 16px 20px;
            border-bottom: 1px solid #3d3d6b;
            text-align: left;
            font-size: 0.95em;
        }

        #tableBody img {
            border-radius: 8px;
            max-width: 80px;
            max-height: 80px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        #tableBody img:hover {
            transform: scale(1.05);
        }

        /* Action links styling */
        #tableBody td a {
            text-decoration: none;
            font-weight: 500;
            padding: 8px 16px;
            border-radius: 6px;
            transition: all 0.3s ease;
            display: inline-block;
        }

        #tableBody td a#editLink {
            background-color: #473C8B;
            color: #e6e6fa;
            margin-right: 8px;
            border: 1px solid #5a4eb1;
        }

        #tableBody td a#deleteLink {
            background-color: #8B3C3C;
            color: #e6e6fa;
            border: 1px solid #b14e4e;
        }

        #tableBody td a:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(71, 60, 139, 0.3);
        }

        /* Add Game Button Styling */
        #addGameForm {
            margin-top: 30px;
        }

        button#addGameButton {
            background-color: #473C8B;
            color: #e6e6fa;
            border: none;
            padding: 14px 24px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 8px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: 1px solid #5a4eb1;
        }

        button#addGameButton:hover {
            background-color: #5a4eb1;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(71, 60, 139, 0.3);
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            background: #1a1a2e;
        }

        ::-webkit-scrollbar-thumb {
            background: #473C8B;
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #5a4eb1;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table#gamesTable, thead#tableHeader, tbody#tableBody, th, td, tr#gameRow {
                display: block;
                width: 100%;
            }
            
            th {
                display: none;
            }
            
            #tableBody tr#gameRow {
                margin-bottom: 20px;
                border: 1px solid #3d3d6b;
                border-radius: 8px;
                background-color: #252547;
                padding: 15px;
                box-shadow: 0 4px 12px rgba(71, 60, 139, 0.2);
            }
            
            td {
                padding: 12px;
                text-align: left;
                position: relative;
            }
            
            td::before {
                content: attr(data-label);
                font-weight: bold;
                display: block;
                margin-bottom: 8px;
                color: #e6e6fa;
                font-size: 0.9em;
                text-transform: uppercase;
                letter-spacing: 1px;
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
            </tr>
        </thead>
        <tbody id="tableBody">
            <c:forEach var="game" items="${game}">
                <tr id="gameRow">
                    <td id="gameImageCell${game.id}" data-label="Game Image">
                        <c:if test="${not empty game.gameImage}">
                            <img src="data:${game.imageContentType};base64,${game.base64Image}" 
                                 alt="Game Image" 
                                 style="max-width:100px; max-height:100px;" 
                                 id="gameImage">
                        </c:if>
                    </td>
                    <td id="gameName" data-label="Game Name">${game.gameName}</td>
                    <td id="gamePlatform" data-label="Platform(s)">${game.platform}</td>
                    <td id="specificOffer" data-label="Specific Offer">${game.specificOffer}</td>
                    <td id="membershipOffer" data-label="Membership Offer">${game.membershipOffer}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div id="addGameForm">
        <button id="addGameButton">Add New Game</button>
    </div>
</body>
</html>