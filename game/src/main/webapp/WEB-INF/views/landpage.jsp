<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book My Game - Dashboard</title>
    <style>
        :root {
            --bg-primary: #0f172a;
            --bg-secondary: #1e293b;
            --accent-primary: #8b5cf6;
            --accent-hover: #7c3aed;
            --text-primary: #f8fafc;
            --text-secondary: #94a3b8;
            --success: #10b981;
            --warning: #f59e0b;
            --card-bg: rgba(30, 41, 59, 0.7);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, sans-serif;
        }

        body {
            background: linear-gradient(135deg, var(--bg-primary) 0%, #1f2937 100%);
            color: var(--text-primary);
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
        }

        /* Animated background effect */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%239C92AC' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
            z-index: -1;
            animation: backgroundMove 30s linear infinite;
        }

        @keyframes backgroundMove {
            0% { background-position: 0 0; }
            100% { background-position: 100px 100px; }
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        .header {
            text-align: center;
            margin-bottom: 3rem;
            position: relative;
        }

        .logo {
            font-size: 3rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--accent-primary), #f472b6);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1rem;
            animation: fadeInDown 0.8s ease-out;
        }

        .welcome-message {
            font-size: 1.5rem;
            color: var(--text-secondary);
            margin-bottom: 0.5rem;
            animation: fadeInUp 0.8s ease-out;
        }

        .username {
            color: var(--accent-primary);
            font-size: 1.25rem;
            margin-bottom: 0.5rem;
        }

        .membership-status {
            display: inline-block;
            padding: 0.5rem 1rem;
            background: var(--success);
            color: white;
            border-radius: 9999px;
            font-size: 0.875rem;
            margin-top: 1rem;
        }

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .dashboard-card {
            background: var(--card-bg);
            border-radius: 1rem;
            padding: 1.5rem;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .dashboard-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .action-button {
            width: 100%;
            padding: 1rem;
            border: none;
            background: var(--accent-primary);
            color: white;
            border-radius: 0.5rem;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .action-button:hover:not(:disabled) {
            background: var(--accent-hover);
            transform: translateY(-2px);
        }

        .action-button:disabled {
            background: var(--text-secondary);
            cursor: not-allowed;
            opacity: 0.7;
        }

        /* Icons for buttons */
        .button-icon {
            width: 1.5rem;
            height: 1.5rem;
            fill: currentColor;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .logo {
                font-size: 2.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1 class="logo">Book My Game</h1>
            <h2 class="welcome-message">Welcome, ${user.name}!</h2>
            <div class="username">@${user.username}</div>
            <c:if test="${not empty member}">
                <div class="membership-status">${member}</div>
            </c:if>
        </div>

        <div class="dashboard-grid">
            <div class="dashboard-card">
                <form action="${pageContext.request.contextPath}/admingames/userlist" id="form1">
                    <button type="submit" id="but1" class="action-button">
                        <svg class="button-icon" viewBox="0 0 24 24">
                            <path d="M21 6h-7.59l3.29-3.29L16 2l-4 4-4-4-.71.71L10.59 6H3c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm0 14H3V8h18v12z"/>
                        </svg>
                        View Games
                    </button>
                </form>
            </div>

            <div class="dashboard-card">
                <form action="${pageContext.request.contextPath}/consoles/devicelist/${user.username}" id="form2">
                    <button type="submit" id="but2" class="action-button">
                        <svg class="button-icon" viewBox="0 0 24 24">
                            <path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm4-3c-.83 0-1.5-.67-1.5-1.5S18.67 9 19.5 9s1.5.67 1.5 1.5-.67 1.5-1.5 1.5z"/>
                        </svg>
                        Book Play Time
                    </button>
                </form>
            </div>

            <div class="dashboard-card">
                <form action="${pageContext.request.contextPath}/membership/userlist/${user.username}" id="form3">
                    <button type="submit" id="but3" class="action-button">
                        <svg class="button-icon" viewBox="0 0 24 24">
                            <path d="M20 4H4c-1.11 0-1.99.89-1.99 2L2 18c0 1.11.89 2 2 2h16c1.11 0 2-.89 2-2V6c0-1.11-.89-2-2-2zm0 14H4v-6h16v6zm0-10H4V6h16v2z"/>
                        </svg>
                        Join Membership
                    </button>
                </form>
            </div>

            <div class="dashboard-card">
                <form action="${pageContext.request.contextPath}/userbookingdetails/list/${user.username}" id="form4">
                    <button type="submit" id="but4" class="action-button">
                        <svg class="button-icon" viewBox="0 0 24 24">
                            <path d="M19 3h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 0c.55 0 1 .45 1 1s-.45 1-1 1-1-.45-1-1 .45-1 1-1zm2 14H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z"/>
                        </svg>
                        Your Bookings
                    </button>
                </form>
            </div>

            <div class="dashboard-card">
                <form action="${pageContext.request.contextPath}/payment/memdetails/${user.username}" id="form5">
                    <button type="submit" id="but5" class="action-button">
                        <svg class="button-icon" viewBox="0 0 24 24">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1.41 16.09V20h-2.67v-1.93c-1.71-.36-3.16-1.46-3.27-3.4h1.96c.1 1.05.82 1.87 2.65 1.87 1.96 0 2.4-.98 2.4-1.59 0-.83-.44-1.61-2.67-2.14-2.48-.6-4.18-1.62-4.18-3.67 0-1.72 1.39-2.84 3.11-3.21V4h2.67v1.95c1.86.45 2.79 1.86 2.85 3.39H14.3c-.05-1.11-.64-1.87-2.22-1.87-1.5 0-2.4.68-2.4 1.64 0 .84.65 1.39 2.67 1.91s4.18 1.39 4.18 3.91c-.01 1.83-1.38 2.83-3.12 3.16z"/>
                        </svg>
                        Membership Details
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var member = "${member}";
        if (member != null && member !== "") {
            document.getElementById("but3").disabled = true;
        }
    </script>
</body>
</html>