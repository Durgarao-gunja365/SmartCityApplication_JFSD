<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
body{
background: linear-gradient(to right, #f7e07d, #ffcc33);
}

 table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        color:black;
    }

    th {
        background-color: #2c3e50;
        color: #fff;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f5f5f5;
    }
h3{
color:black;
}
</style>
</head>
<body>
<%@include file="AdminNavbar.jsp" %>
<h2 style="color:black;text-align:center;">Admin Dashboard</h2>
<br>
<table> <thead> <tr> <th>Description</th> <th>Count</th> </tr> </thead> <tbody> <tr> <td>Total Customers</td> <td><c:out value="${count}"></c:out></td> </tr> <tr> <td>Total Requests</td> <td><c:out value="${requestcount}"></c:out></td> </tr> </tbody>
</body>
</html>