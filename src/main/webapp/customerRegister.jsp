<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #1c92d2, #f2fcfe); 
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            max-width: 900px;
            width: 100%;
            margin-left: 300px;
        }
        .form-container {
            flex: 1;
            padding: 30px 40px;
        }
        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        label {
            color: #555555;
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
        }
        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #a5d6a7;
            border-radius: 5px;
            font-size: 16px;
            background-color: #f9f9f9;
            color: #333;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }
        .button-container input {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
        }
        .button-container input[type="reset"] {
            background-color: #f44336;
            color: white;
        }
        .error-message {
            color: red;
            font-size: 12px;
            margin-bottom: 10px;
        }
        .image-container {
            flex: 1;
            background: linear-gradient(to bottom right, #1c92d2, #f2fcfe);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        .image-container img {
            max-width: 100%;
            height: auto;
            animation: float 3s ease-in-out infinite;
        }
        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }
        select {
            color: black;
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 5px;
        }
        select option {
            color: black;
            background-color: white;
        }
        
        .link1 {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
           color: #007BFF;
            font-weight: bold;
        }
        .link1:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm() {
            const nameField = document.querySelector("input[name='cname']");
            const nameError = document.getElementById("nameError");

            if (/^\d+$/.test(nameField.value)) {
                nameError.textContent = "Name cannot be numeric only.";
                return false;
            } else {
                nameError.textContent = "";
            }
            return true;
        }
    </script>
</head>
<body>
<%@ include file="mainNavbar.jsp" %>
<h3 align="center" style="color:red">
    <c:out value="${message}"></c:out>
</h3>

<br>
<h1>Customer Registration</h1>
<div class="container">
    <div class="form-container">
        <c:if test="${not empty message}">
            <p class="success-message">${message}</p>
        </c:if>
        <form action="insertcustomer" method="post" onsubmit="return validateForm()">
            <label for="name">Name:</label>
            <input type="text" name="cname" class="input-field" required>
            <span id="nameError" class="error-message"></span>
            <c:if test="${not empty nameError}">
                <span class="error-message">${nameError}</span>
            </c:if>

            <label for="gender">Gender:</label>
            <select name="cgender" class="input-field" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others">Others</option>
            </select>
            <c:if test="${not empty genderError}">
                <span class="error-message">${genderError}</span>
            </c:if>

            <label for="dob">Date of Birth:</label>
            <input type="date" name="cdob" class="input-field" required>
            <c:if test="${not empty dobError}">
                <span class="error-message">${dobError}</span>
            </c:if>

            <label for="email">Email:</label>
            <input type="email" name="cemail" class="input-field" required>
            <c:if test="${not empty emailError}">
                <span class="error-message">${emailError}</span>
            </c:if>

            <label for="password">Password:</label>
            <input type="password" name="cpassword" class="input-field" required>
            <c:if test="${not empty passwordError}">
                <span class="error-message">${passwordError}</span>
            </c:if>

            <label for="location">Location:</label>
            <input type="text" name="clocation" class="input-field" required>
            <c:if test="${not empty locationError}">
                <span class="error-message">${locationError}</span>
            </c:if>

            <label for="contact">Contact:</label>
            <input type="number" name="ccontact" class="input-field" required>
            <c:if test="${not empty contactError}">
                <span class="error-message">${contactError}</span>
            </c:if>

            <div class="button-container">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </div>
        </form>
         <a href="customerLogin" class="link1">Back to Login</a>
    </div>
    <div class="image-container">
        <img src="https://thumbs.dreamstime.com/b/college-student-laptop-20401891.jpg" alt="Registration Illustration">
    </div>
</div>
</body>
</html>
