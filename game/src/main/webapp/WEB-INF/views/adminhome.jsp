<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Ensure JSTL taglib is imported -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

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
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 20px;
}

.container {
  width: 100%;
  max-width: 1200px;
  text-align: center;
}

h1, h2 {
  margin: 20px 0;
  color: var(--color-secondary);
  text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
}

h1 {
  font-size: 2.5em;
  margin-bottom: 30px;
}

h2 {
  font-size: 1.8em;
}

#adminPhoto {
  display: block;
  margin: 30px auto;
  border-radius: 50%;
  border: 3px solid var(--color-secondary);
  box-shadow: 0 0 20px rgba(233, 69, 96, 0.5);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  max-width: 150px;
  max-height: 150px;
}

#adminPhoto:hover {
  transform: scale(1.05);
  box-shadow: 0 0 30px rgba(233, 69, 96, 0.8);
}

#adminName {
  font-size: 1.4em;
  margin: 20px 0;
  color: var(--text-secondary);
}

.button-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  margin-top: 40px;
}

form {
  width: 100%;
}

button {
  width: 100%;
  background-color: var(--color-primary);
  color: var(--text-primary);
  border: none;
  border-radius: 8px;
  padding: 15px 25px;
  font-size: 1em;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

button:hover {
  background-color: var(--color-secondary);
  transform: translateY(-3px);
  box-shadow: 0 6px 8px rgba(0,0,0,0.2);
}

button:active {
  transform: translateY(-1px);
  box-shadow: 0 2px 4px rgba(0,0,0,0.2);
}

@media (max-width: 768px) {
  h1 {
    font-size: 2em;
  }

  h2 {
    font-size: 1.5em;
  }

  .button-container {
    grid-template-columns: 1fr;
  }
}

/* Animations */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}

.container > * {
  animation: fadeIn 0.5s ease-out forwards;
  opacity: 0;
}

.container > *:nth-child(1) { animation-delay: 0.1s; }
.container > *:nth-child(2) { animation-delay: 0.2s; }
.container > *:nth-child(3) { animation-delay: 0.3s; }
.container > *:nth-child(4) { animation-delay: 0.4s; }
.container > *:nth-child(5) { animation-delay: 0.5s; }

.button-container {
  animation: fadeIn 0.5s ease-out 0.6s forwards;
  opacity: 0;
}
</style>

</head>
<body>
<div class="container">
    <h1 id="dashboardTitle">Welcome to Book My Game Admin Dashboard</h1><br><br>
    <h2 id="userGreeting">User - ${adminreg.adminUsername}</h2>

    <!-- Display the Base64 image -->
    <c:if test="${not empty adminreg.base64Image}">
        <img src="data:${adminreg.imageContentType};base64,${adminreg.base64Image}" 
             alt="Admin Photo" 
             id="adminPhoto" 
             style="max-width:100px; max-height:100px;"/>
    </c:if>
    <p id="adminName">${adminreg.adminName}</p><br><br>
    <div class="button-container">
    <form action="${pageContext.request.contextPath}/admingames/adminlist" id="form1">
        <button type="submit" id="but1">AddGame+ to Show Customer</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/admingames/list" id="form3">
        <button type="submit" id="but3">Games List in your Shop</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/consoles/new" id="form2">
        <button type="submit" id="but2">Add Console Details</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/consoles/list/${adminreg.adminUsername}" id="form2">
        <button type="submit" id="but2">Your Console Devices</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/membership/new" id="form3">
        <button type="submit" id="but3">Add or Edit Membership</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/membership/list" id="form3">
        <button type="submit" id="but3">view Membership List</button>
    </form>
    
    <form action="${pageContext.request.contextPath}/membership/customermembers" id="form3">
        <button type="submit" id="but3">view Membership Customers</button>
    </form>
    </div>
   </div>
</body>
</html>
