<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
          background: linear-gradient(to right, #f7e07d, #ffcc33);

            color: #333;
        }

        h1 {
            text-align: center;
            color: #444;
            margin-top: 20px;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
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

        form {
            display: flex;
            gap: 10px;
        }

        input[type="text"] {
            padding: 5px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
            color : black;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 7px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        button:hover {
            background-color: #45a049;
        }
        
         button.delete {
        background-color: #e74c3c;
    }

    button.delete:hover {
        background-color: #c0392b;
    }

    button:hover {
        background-color: #45a049;
    }
    </style>
</head>
<body>
<%@include file="AdminNavbar.jsp" %>

   <h1>Service Requests</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>User Email</th>
            <th>Request Details</th>
            <th>Reply</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${requests}" var="request">
            <tr>
                <td>${request.id}</td>
                <td>${request.userEmail}</td>
                <td>${request.requestDetails}</td>
                <td>${request.adminReply}</td>
                <td>
                    <form action="/replyRequest" method="post">
                        <input type="hidden" name="id" value="${request.id}">
                        <input type="text" name="reply" placeholder="Reply" required>
                        <button type="submit">Send Reply</button>
                    </form>
                    <form action="/deleteRequest" method="post" style="margin-top: 5px;">
                    <input type="hidden" name="id" value="${request.id}">
                    <button type="submit" class="delete">Delete</button>
                </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>