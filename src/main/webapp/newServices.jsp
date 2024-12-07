<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="get" action="/services">
    <label>Filter by Category:</label>
    <select name="category">
        <option value="">All</option>
        <option value="Public Service">Public Service</option>
        <option value="Infrastructure">Infrastructure</option>
        <option value="Amenities">Amenities</option>
    </select>
    <button type="submit">Search</button>
</form>

<div style="display: flex; flex-wrap: wrap; gap: 20px;">
    <c:forEach var="service" items="${services}">
        <div style="border: 1px solid #ccc; padding: 10px; width: 30%; border-radius: 5px;">
            <img src="${service.imagePath}" alt="${service.title}" style="width: 100%; border-radius: 5px;">
            <h3>${service.title}</h3>
            <p>${service.description}</p>
            <p><b>Location:</b> ${service.location}</p>
            <p><b>Date:</b> ${service.date}</p>
            <p><b>Category:</b> ${service.category}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>