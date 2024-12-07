<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Service</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
        background: linear-gradient(to right, #f7e07d, #ffcc33);
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color:black;
        }
        input[type="text"], input[type="date"], textarea, select {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            color:black;
        }
        textarea {
            height: 100px;
        }
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        h1 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
<%@ include file="AdminNavbar.jsp" %>
    <h1>Update Service</h1>
    <form action="/admin/update-service" method="post">
        <input type="hidden" name="id" value="${service.id}" />
        <label>Title:</label>
        <input type="text" name="title" value="${service.title}" required>
        
        <label>Description:</label>
        <textarea name="description" required>${service.description}</textarea>
        
        <label>Location:</label>
        <input type="text" name="location" value="${service.location}" required>
        
        <label>Date:</label>
        <input type="date" name="date" value="${service.date}" required>
        
        <label>Category:</label>
        <select name="category">
            <option value="Public Service" ${service.category == 'Public Service' ? 'selected' : ''}>Public Service</option>
            <option value="Infrastructure" ${service.category == 'Infrastructure' ? 'selected' : ''}>Infrastructure</option>
            <option value="Amenities" ${service.category == 'Amenities' ? 'selected' : ''}>Amenities</option>
        </select>
        
        <button type="submit">Update Service</button>
    </form>
</body>
</html>
