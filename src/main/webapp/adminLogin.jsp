<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<title>Admin Login</title>
<style>
    /* Body and Container Styling */
      body {
   /*  background: linear-gradient(to right, #ff7e5f, #feb47b); */
   
    background: linear-gradient(to right, #1c92d2, #f2fcfe); 
    font-family: Arial, sans-serif;
    
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    animation: backgroundSlide 0.5s infinite alternate ease-in-out;
}

/* Keyframe for background gradient animation */
/* @keyframes backgroundSlide {
    0% { background: linear-gradient(to right, #ff7e5f, #feb47b); }
    100% { background: linear-gradient(to left, #f53844, #f5d020); }
} */

    .login-container {
        width: 400px;
        padding: 30px;
        margin-left:500px;
        border: 2px solid #4CAF50;
        border-radius: 12px;
        background-color: #fff;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        animation: fadeIn 1s ease, slideIn 1s ease; /* Animation added */
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    @keyframes slideIn {
        from { transform: translateY(-50px); }
        to { transform: translateY(0); }
    }
    
    /* Heading */
    .login-heading {
        text-align: center;
        color: #4CAF50;
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
        animation: bounceIn 1s ease; /* Animation added */
    }
    
    /* Bounce In Animation */
    @keyframes bounceIn {
        0%, 100% { transform: translateY(-5px); }
        50% { transform: translateY(5px); }
    }
    
    /* Input Field Styling */
    .input-field {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #a5d6a7;
        border-radius: 5px;
        font-size: 16px;
        background-color: #f9f9f9;
        color: #333;
        transition: all 0.3s ease; /* Animation added */
    }
    .input-field:focus {
        border-color: #4CAF50;
        outline: none;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
        transform: scale(1.05); /* Focus scaling animation */
    }
    
    /* Labels */
    label {
        font-weight: bold;
        color: #4CAF50;
        display: block;
        margin-bottom: 5px;
        animation: fadeInText 0.8s ease;
    }
    
    /* Fade In Animation for Labels */
    @keyframes fadeInText {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    
    /* Button Styling */
    .button-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    input[type="submit"],
    input[type="reset"] {
        width: 45%; /* Adjusted width */
        padding: 8px; /* Reduced padding */
        font-size: 14px; /* Reduced font size */
        font-weight: bold;
        color: white;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
        transform: scale(1.05);
    }
    input[type="reset"]:hover {
        background-color: #e53935;
        transform: scale(1.05);
    }
</style>
</head>
<body>
<%@include file="mainNavbar.jsp" %>
<br>
<h3 align="center" style="color:red">
<c:out value="${msg}"></c:out><br/>
</h3>
<div class="login-container">
    <h2 class="login-heading">Admin Login</h2>
    <form action="checkAdminLogin" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" class="input-field" required>
        <label for="password">Password:</label>
        <input type="password" name="password" class="input-field" required>
        <div class="button-container">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>
</div>
</body>
</html>
