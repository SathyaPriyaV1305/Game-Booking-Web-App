<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Register</title>
</head>
<style>

/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
    padding: 20px;
}

form {
    background: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    position: relative;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #333;
    font-weight: 500;
    font-size: 0.95rem;
}

input {
    width: 100%;
    padding: 12px 16px;
    margin-bottom: 20px;
    border: 2px solid #e1e1e1;
    border-radius: 6px;
    font-size: 1rem;
    transition: border-color 0.3s ease;
}

input:focus {
    outline: none;
    border-color: #4a90e2;
    box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.1);
}

input[type="file"] {
    padding: 10px;
    border: 2px dashed #e1e1e1;
    background: #f8f9fa;
    cursor: pointer;
}

button {
    width: 100%;
    padding: 14px;
    background: #4a90e2;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 1rem;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background: #357abd;
}

button:active {
    transform: scale(0.98);
}

#existinguser {
    display: block;
    text-align: center;
    margin-top: 20px;
    color: #4a90e2;
    text-decoration: none;
    font-weight: 500;
}

#existinguser:hover {
    text-decoration: underline;
}

/* Error states */
input:invalid {
    border-color: #dc3545;
}

/* Responsive design */
@media (max-width: 600px) {
    form {
        padding: 20px;
    }
    
    input {
        padding: 10px 12px;
    }
    
    label {
        font-size: 0.9rem;
    }
}

/* Custom scrollbar */
::-webkit-scrollbar {
    width: 8px;
}

::-webkit-scrollbar-track {
    background: #f1f1f1;
}

::-webkit-scrollbar-thumb {
    background: #888;
    border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
    background: #555;
}

/* Animations */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

form {
    animation: fadeIn 0.5s ease-out;
}

/* Placeholder styling */
::placeholder {
    color: #aaa;
    opacity: 1;
}

/* Focus styles for accessibility */
*:focus-visible {
    outline: 3px solid #4a90e2;
    outline-offset: 2px;
}

</style>
<body>
<form action="${pageContext.request.contextPath}/admindetails/adminland" id = "regform" method="post" enctype="multipart/form-data">
<label>Admin Username: </label>
<input type="text" name = "adminUsername" placeholder = "enter username" value="${adminreg.adminUsername}"  id = "username" required><br><br>
<label for="name">Name: </label>
<input type="text" id = "name" name = "adminName"  value="${adminreg.adminName}"  required><br><br>
<label for="consoles">No of Consoles: </label>
<input type="text" name = "noOfConsoles" placeholder = "Enter No of Consoles"  id = "consoles" value = "${adminreg.noOfConsoles}" required><br><br>
<label for = "age">Age </label>
<input type="text" id = "age" name = "adminAge"  value="${adminreg.adminAge}"  required><br><br>
<label for="image">Admin Photo:</label>
<input type="file" id="image" name="image1" /><br/><br/>
<label>Phone Number </label>
<input type="text" name = "adminMobNo" placeholder = "enter mobile number" value = "${adminreg.adminMobNo}" id = "mobno" required><br><br>
<label>Email: </label>
<input type="text" name = "adminMail" placeholder = "enter mail id" value = "${adminreg.adminMail}" id = "mail" required><br><br>
<label>Password: </label>
<input type="text" name = "adminPassword" placeholder = "enter password"  id = "pass" value = "${adminreg.adminPassword}" required><br><br>
<label>Re-Password: </label>
<input type="text" name = "repass" placeholder = "re-enter password" id = "repass"  required><br><br>
<button type ="submit">Register</button>
</form>

<a href = "${pageContext.request.contextPath}/admindetails/log" id = "existinguser">Existing user?</a>
</body>
</html>