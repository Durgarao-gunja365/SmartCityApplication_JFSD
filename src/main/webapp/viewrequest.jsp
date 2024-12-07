<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Service Requests</title>
    <style>
     body {
        font-family: Arial, sans-serif;
       background: linear-gradient(to right, #f7e07d, #ffcc33);


        color: #333;
    }
    
    /* Heading styling */
    h2 {
        text-align: center;
        margin-top: 20px;
        color: #2c3e50;
    }
   button[type="submit"]:hover {
    background-color: #c0392b; /* Darker red on hover */
}

button[type="submit"]:focus {
    
    box-shadow: 0 0 5px rgba(231, 76, 60, 0.5); /* Slight glow on focus */
}
button[type="submit"] {
   
    background-color: #e74c3c; /* Red color for delete */
    
    cursor: pointer;
    transition: background-color 0.3s ease;
}
    /* Search box container */
    .search-container {
        display: flex;
        justify-content: center;
        margin: 20px;
    }

    /* Search box styling */
    #searchInput {
        padding: 12px 20px;
        width: 40%;
        font-size: 16px;
        border: 2px solid #2c3e50;
        border-radius: 25px;
        transition: box-shadow 0.3s, border-color 0.3s;
        color: black;
    }

    /* Search box focus effects */
    #searchInput:focus {
        outline: none;
        border-color: #4CAF50;
        box-shadow: 0 0 8px rgba(255, 1, 0, 0.5);
    }

    /* Table styling */
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
        .table-header {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: black;
            font-weight: bold;
        }
    </style>
    <script>
        function searchTable() {
            let input = document.getElementById("searchInput").value.toUpperCase();
            let table = document.getElementById("customerTable");
            let tr = table.getElementsByTagName("tr");

            for (let i = 1; i < tr.length; i++) { // Start from 1 to skip header
                let td = tr[i].getElementsByTagName("td");
                let found = false;

                for (let j = 0; j < td.length; j++) {
                    if (td[j]) {
                        let txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(input) > -1) {
                            found = true;
                            break;
                        }
                    }
                }
                tr[i].style.display = found ? "" : "none"; // Show if found, otherwise hide
            }
        }
    </script>
</head>
<body>
    <%@ include file="AdminNavbar.jsp" %>
    <div class="table-header">Service Requests</div>
    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search requests...">
    </div>

    <table id="customerTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Request Type</th>
                <th>Location</th>
                <th>Description</th>
                <th>Priority</th>
                <th>Date of Request</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="request" items="${requestlist}"> <!-- Changed variable name -->
                <tr>
                    <td><c:out value="${request.id}" /></td> <!-- Accessing 'request' instead of 'requestlist' -->
                    <td><c:out value="${request.name}" /></td>
                    <td><c:out value="${request.contact}" /></td>
                    <td><c:out value="${request.requestType}" /></td>
                    <td><c:out value="${request.location}" /></td>
                    <td><c:out value="${request.description}" /></td>
                    <td><c:out value="${request.priority}" /></td>
                    <td><c:out value="${request.date}" /></td>
                    <td>
                        <form action="deleteRequest/${request.id}" method="post" onsubmit="return confirm('Are you sure you want to delete this request?');">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
