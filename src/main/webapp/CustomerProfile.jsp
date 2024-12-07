<%@ page import="com.example.demo.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% Customer c = (Customer) session.getAttribute("customer"); %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
<style>
    /* Centering the card on the page */
    body {
       
        justify-content: center;
        align-items: center;
        background: linear-gradient(to right, #8B4513, #D2691E);
        font-family: Arial, sans-serif;
        height: 100vh;
        margin: 0;
    }

    /* Card container styling */
    .card {
    margin-top:20px;
    margin-left:500px;
 
        width: 400px;
        background: #fff;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s ease-in-out;
    }

    /* Hover effect */
    .card:hover {
        transform: scale(1.03);
    }

    /* Profile image styling */
    .card-header {
        background: linear-gradient(135deg, #6c63ff, #4e54c8);
        padding: 30px 0;
        text-align: center;
        color: white;
    }

    /* Customer name styling */
    .card-header h3 {
        margin: 0;
        font-size: 24px;
    }

    .card-header p {
        margin: 5px 0 0;
        font-size: 14px;
        color: #f0f0f5;
    }

    /* Info section styling */
    .card-body {
        padding: 20px;
    }

    /* Styling each info row */
    .info-row {
        display: flex;
        justify-content: space-between;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }

    .info-row:last-child {
        border-bottom: none;
    }

    .label {
        font-weight: bold;
        color: #555;
    }

    .value {
        color: #333;
    }

    /* Button styling */
    .card-footer {
        text-align: center;
        padding: 15px;
        background: #f9f9f9;
        border-top: 1px solid #eee;
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #6c63ff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        transition: background 0.3s ease;
    }

    .btn:hover {
        background-color: #4e54c8;
    }
</style>
</head>
<body>
<%@ include file="CustomerNavbar.jsp" %>
<h3 align="center" style="color:red">
<c:out value="${message}"></c:out><br/></h3>
<div class="card">
    <div class="card-header">
        <h3>Welcome, <%= c.getName() %>!</h3>
        <p>Customer Profile</p>
    </div>
    <div class="card-body">
        <div class="info-row">
            <span class="label">ID:</span>
            <span class="value"><%= c.getId() %></span>
        </div>
        <div class="info-row">
            <span class="label">Name:</span>
            <span class="value"><%= c.getName() %></span>
        </div>
        <div class="info-row">
            <span class="label">Gender:</span>
            <span class="value"><%= c.getGender() %></span>
        </div>
        <div class="info-row">
            <span class="label">Email:</span>
            <span class="value"><%= c.getEmail() %></span>
        </div>
        <div class="info-row">
            <span class="label">Date of Birth:</span>
            <span class="value"><%= c.getDob() %></span>
        </div>
        <div class="info-row">
            <span class="label">Location:</span>
            <span class="value"><%= c.getLocation() %></span>
        </div>
        <div class="info-row">
            <span class="label">Contact:</span>
            <span class="value"><%= c.getContact() %></span>
        </div>
        <div class="info-row">
            <span class="label">Password:</span>
            <span class="value"><%= c.getPassword() %></span>
        </div>
    </div>
   <div class="card-footer">
    <a href="updateCustomer/<%= c.getId() %>" class="btn">Edit Profile</a>
   
</div>
    
</div>

</body>
</html>
