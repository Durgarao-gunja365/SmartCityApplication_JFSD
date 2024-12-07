<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin View All Customers</title>
<style>
    /* General body styling */
    body {
        font-family: Arial, sans-serif;
      background: linear-gradient(to right, #f7e07d, #ffcc33);


        color: #333;
    }
    
    /* Heading styling */
    h2 {
        text-align: center;
        margin-top: 20px;
        color: black;
    }
     h3 {
        text-align: center;
        margin-top: 20px;
        color: black;
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
        box-shadow: 0 0 8px rgba(76, 175, 80, 0.4);
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
</style>

<script>
    function searchTable() {
        let input = document.getElementById("searchInput").value.toUpperCase();
        let table = document.getElementById("customerTable");
        let tr = table.getElementsByTagName("tr");

        for (let i = 1; i < tr.length; i++) {
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
            tr[i].style.display = found ? "" : "none";
        }
    }
</script>
</head>
<body>
<%@include file="AdminNavbar.jsp" %>
<h2>Admin View All Customers</h2>

<h3>Total Customers : <c:out value="${count}"></c:out></h3>
<div1 class="search-container">
    <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search customers...">
</div1>

<table id="customerTable">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Gender</th>
    <th>Date of Birth</th>
    <th>Email</th>
    <th>Location</th>
    <th>Contact</th>
</tr>
<c:forEach items="${customerlist}" var="customer">
    <tr>
        <td><c:out value="${customer.id}"/></td>
        <td><c:out value="${customer.name}"/></td>
        <td><c:out value="${customer.gender}"/></td>
        <td><c:out value="${customer.dob}"/></td>
        <td><c:out value="${customer.email}"/></td>
        <td><c:out value="${customer.location}"/></td>
        <td><c:out value="${customer.contact}"/></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
