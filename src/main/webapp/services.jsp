<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Services</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
      
        background: linear-gradient(to right, #f7e07d, #ffcc33);
    }
    form {
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
        margin-left:500px;
    }
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #45a049;
    }
    .card-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }
    .card {
        background-color: white;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 15px;
        width: 300px;
        transition: transform 0.2s, box-shadow 0.2s;
    }
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }
    .card h3 {
        margin: 10px 0;
        color: #333;
    }
    .card b {
        color: #555;
    }
    
    filter-form {
        display: flex;
        align-items: center;
        gap: 10px;
        margin-bottom: 20px;
        padding: 15px;
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        margin: auto;
    }
    .filter-form label {
        font-weight: bold;
        font-size: 16px;
        color: #333;
    }
    .filter-form select {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
        color: #555;
    }
    .filter-form button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }
    .filter-form button:hover {
        background-color: #45a049;
        transform: scale(1.05);
    }
    .filter-form button:focus,
    .filter-form select:focus {
        outline: none;
        box-shadow: 0 0 5px rgba(0, 150, 0, 0.5);
    }
    select option {
    color: black; /* Ensures the text color is black for the options */
    background-color: #fff; /* Optional: ensures background is white */
}
</style>
</head>
<body>
<%@ include file="AdminNavbar.jsp" %>

<form method="get" action="addedservice" class="filter-form">
    <label for="category">Filter by Category:</label>
    <select name="category" id="category">
        <option value="">All</option>
        <option value="Public Service">Public Service</option>
        <option value="Infrastructure">Infrastructure</option>
        <option value="Amenities">Amenities</option>
    </select>
    <button type="submit">Search</button>
</form>

<c:if test="${not empty message}">
            <p style="color: red; font-weight: bold;text-align:center; font-size:24px;">${message}</p>
        </c:if>

<div class="card-container">
    <c:forEach items="${services}" var="services">
        <div class="card">
        <h3 style="text-decoration: underline;">Category  : <c:out value="${services.category}" /></h3>
            <h3><b>Title:</b> <c:out value="${services.title}" /></h3>
            <h3><b>Location:</b> <c:out value="${services.location}" /></h3>
            <h3><b>Description:</b> <c:out value="${services.description}" /></h3>
            <h3><b>Date of Added:</b> <c:out value="${services.date}" /></h3>
             <form action="updatenewservice" method="get" style="display: inline;">
                        <input type="hidden" name="id" value="${services.id}" />
                        <button type="submit" style="background-color: #4CAF50; color: white; border: none; padding: 5px 10px; cursor: pointer;">Update</button>
                    </form>
                    <form action="deleteservice/${services.id}" method="get" style="display: inline;">
                        <button type="submit" style="background-color: #f44336; color: white; border: none; padding: 5px 10px; cursor: pointer;">Delete</button>
                    </form>
        </div>
    </c:forEach>
</div>
</body>
</html>
