<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit a Service Request</title>
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

    h1 {
        color: #333;
        text-align: center;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
         margin-left:500px;
    }

    label {
        font-weight: bold;
        color: #555;
        display: block;
        margin-bottom: 5px;
    }

    input, textarea {
        width: 90%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        color:black;
    }

    button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 20%;
        margin-left: 30%;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%@include file="mainNavbar.jsp" %>
<h3 align="center" style="color:red">
<c:out value="${message}"></c:out><br/>
</h3>
    <form action="submitRequest" method="post">
        <h1>Send a email Request</h1>
        <label>Email:</label>
        <input type="email" name="email" required>
        <label>Details:</label>
        <textarea name="details" rows="4" required></textarea>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
