<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body{
background: linear-gradient(to right, #f7e07d, #ffcc33);
}
form { background: #fff; padding: 20px;margin-left:500px; border-radius: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); width: 400px; } 
h2 { text-align: center; color: #333; }
 label { display: block; margin-bottom: 8px; color: #555; }
 input[type="text"], input[type="date"], input[type="file"], textarea, select { width: 100%; padding: 10px; margin-bottom: 10px; border: 1px solid #ddd; border-radius: 5px; box-sizing: border-box;color:black; } 
button { width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }
 button:hover { background-color: #45a049; }
select option {
    color: black; /* Ensures the text color is black for the options */
    background-color: #fff; /* Optional: ensures background is white */
}
</style>
</head>
<body>
<%@include file="AdminNavbar.jsp" %>

<h3 align="center" style="color:red">
<c:out value="${message}"></c:out><br/>
</h3>
<form action="addservice" method="post" enctype="multipart/form-data">
    <label>Category:</label>
    <select name="category">
        <option value="Public Service">Public Service</option>
        <option value="Infrastructure">Infrastructure</option>
        <option value="Amenities">Amenities</option>
    </select><br>
    <label>Title:</label>
    <input type="text" name="title" required><br>
    <label>Description:</label>
    <textarea name="description" required></textarea><br>
    <label>Location:</label>
    <input type="text" name="location" required><br>
    <label>Date:</label>
    <input type="date" name="date" required><br>
    
    <button type="submit">Add Service</button>
</form>

</body>
</html>