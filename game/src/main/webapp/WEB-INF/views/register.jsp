<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book My Game</title>
<style>
/* General page styles */
body {
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    padding: 20px;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #1a1a2e, #16213e);
    color: #e6e6fa;
    box-sizing: border-box;
}

/* Form container */
#regform {
    background: #2a2a4a;
    border-radius: 8px;
    box-shadow: 0 4px 20px rgba(204, 204, 255, 0.2);
    padding: 2em;
    width: 100%;
    max-width: 500px;
    box-sizing: border-box;
    border: 1px solid rgba(204, 204, 255, 0.1);
}

h2#head {
    text-align: center;
    color: #ccccff;
    font-size: 2em;
    margin-bottom: 1.5em;
    text-shadow: 0 0 10px rgba(204, 204, 255, 0.3);
}

/* Input and label styling */
label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #ccccff;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"] {
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
input[type="email"]:focus,
input[type="password"]:focus,
input[type="number"]:focus {
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
    margin-top: 1em;
}

button[type="submit"]:hover {
    background-color: #8e8ec6;
    box-shadow: 0 0 15px rgba(142, 142, 198, 0.4);
}

/* Existing user link */
#existinguser {
    display: block;
    text-align: center;
    margin-top: 1.5em;
    color: #ccccff;
    text-decoration: none;
    font-size: 0.9em;
    transition: all 0.3s;
}

#existinguser:hover {
    text-shadow: 0 0 10px rgba(204, 204, 255, 0.5);
    color: #fff;
}

/* Validation styles */
.error {
    border-color: #ff9999;
    box-shadow: 0 0 5px rgba(255, 153, 153, 0.3);
}

.error-message {
    color: #ff9999;
    font-size: 0.8rem;
    margin-top: 5px;
    margin-bottom: 10px;
    text-shadow: 0 0 10px rgba(255, 153, 153, 0.3);
}

/* Placeholder text color */
::placeholder {
    color: #8e8ec6;
    opacity: 0.7;
}

/* Remove default number input arrows */
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

input[type="number"] {
    -moz-appearance: textfield;
}
</style>
</head>
<body>
<h2 id="head">${reg.username != null ? 'Edit' : 'Add New'} User</h2>
<form action="landpage" id="regform" method="post" onsubmit="Validate()">
    <label>Username: </label>
    <input type="text" name="username" placeholder="enter username" value="${reg.username}" id="username" required>
    
    <label for="name">Name: </label>
    <input type="text" id="name" name="name" value="${reg.name}" required>
    
    <label for="age">Age: </label>
    <input type="text" id="age" name="age" value="${reg.age}" required>
    
    <label>Phone Number </label>
    <input type="number" name="mobno" placeholder="enter mobile number" value="${reg.mobno}" id="mobno" required>
    
    <label>Email: </label>
    <input type="text" name="mail" placeholder="enter mail id" value="${reg.mail}" id="mail" required>
    
    <label>Password: </label>
    <input type="password" name="password" placeholder="enter password" id="pass" required>
    
    <label>Re-Password: </label>
    <input type="password" name="repass" placeholder="re-enter password" id="repass" required>
    
    <button type="submit">Register</button>
</form>

<a href="${pageContext.request.contextPath}/games/log" id="existinguser">Existing user?</a>

<script type="text/javascript">
function Validate() {
    const username = document.getElementById("username").value;
    var name = document.getElementById("name").value;
    var mobno = document.getElementById("mobno").value;
    var pass = document.getElementById("pass").value;
    var repass = document.getElementById("repass").value;
    var mobnoInt = Number(mobno);
    
    if(username.length < 5) {
        alert("need more than 5 characters in username");
        event.preventDefault();
    }
    
    if(!(Number.isFinite(mobnoInt))) {
        alert("please enter numeric value in mobile number");
        event.preventDefault();
    }
    
    if(pass != repass) {
        alert("Password doesn't match");
        event.preventDefault();
    }
}
</script>
</body>
</html>