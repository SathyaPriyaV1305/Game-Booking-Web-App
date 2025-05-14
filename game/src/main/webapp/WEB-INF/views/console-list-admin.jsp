<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Console List</title>
</head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Console List</title>
    <style>
        :root {
            --bg-primary: #1a1a1a;
            --bg-secondary: #2d2d2d;
            --text-primary: #ffffff;
            --text-secondary: #a0a0a0;
            --accent: #6366f1;
            --border: #404040;
            --hover: #3a3a3a;
            --danger: #dc2626;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
        }

        body {
            background-color: var(--bg-primary);
            color: var(--text-primary);
            min-height: 100vh;
            padding: 2rem;
        }

        h2 {
            color: var(--text-primary);
            margin-bottom: 2rem;
            font-size: 2rem;
            font-weight: 600;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: var(--bg-secondary);
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        thead {
            background-color: var(--bg-secondary);
        }

        th {
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            color: var(--text-primary);
            border-bottom: 2px solid var(--border);
        }

        td {
            padding: 1rem;
            color: var(--text-secondary);
            border-bottom: 1px solid var(--border);
        }

        tr:last-child td {
            border-bottom: none;
        }

        tr:hover {
            background-color: var(--hover);
        }

        .actions {
            display: flex;
            gap: 1rem;
        }

        .btn {
            padding: 0.5rem 1rem;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.2s ease;
        }

        .btn-edit {
            background-color: var(--accent);
            color: white;
        }

        .btn-edit:hover {
            background-color: #4f46e5;
        }

        .btn-delete {
            background-color: transparent;
            color: var(--danger);
            border: 1px solid var(--danger);
        }

        .btn-delete:hover {
            background-color: var(--danger);
            color: white;
        }

        .membership-badge {
            background-color: #059669;
            color: white;
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.875rem;
            display: inline-block;
        }

        .price {
            font-family: monospace;
            font-size: 1.1rem;
            color: var(--text-primary);
        }
    </style>
<body>

    <h2>Console List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Console Name</th>
                <th>Price Per Hour</th>
                <th>Membership Offer (%)</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="console" items="${console}">
                <tr>
                     <td>${console.consoleName}</td>
                        <td><span class="price">${console.pricePerHour}</span></td>
                        <td><span class="membership-badge">${console.membershipOffer}% OFF</span></td>
                        <td class="actions">
                            <a href="${pageContext.request.contextPath}/consoles/edit/${console.id}" class="btn btn-edit">Edit</a>
                            <a href="${pageContext.request.contextPath}/consoles/delete/${console.id}" class="btn btn-delete">Delete</a>
                        </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
