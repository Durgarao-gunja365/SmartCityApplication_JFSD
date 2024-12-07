<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Customer Details</title>
    <style>
        body {
         
            justify-content: center;
            align-items: center;
            min-height: 100vh;
           background: linear-gradient(to right, #8B4513, #D2691E);
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .form-container {
            width: 400px;
            background-color: #fff;
            padding: 20px;
            margin-left:500px;
            margin-top:20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #4e54c8;
        }

        label {
            font-weight: bold;
            color: #555;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            color:black;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #6c63ff;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #4e54c8;
        }
    </style>
</head>
<body>
<%@ include file="CustomerNavbar.jsp" %>
    <div class="form-container">
        <h2>Update Customer Details</h2>
        <form action="/updateCustomer" method="POST">
            <input type="hidden" name="id" value="${customer.id}" />
            <label for="cname">Name:</label>
            <input type="text" id="cname" name="cname" value="${customer.name}" />

            <label for="cgender">Gender:</label>
            <input type="text" id="cgender" name="cgender" value="${customer.gender}" />

            <label for="cdob">Date of Birth:</label>
            <input type="date" id="cdob" name="cdob" value="${customer.dob}" />

            <label for="cemail">Email:</label>
            <input type="email" id="cemail" name="cemail" value="${customer.email}" />

            <label for="clocation">Location:</label>
            <input type="text" id="clocation" name="clocation" value="${customer.location}" />

            <label for="ccontact">Contact:</label>
            <input type="text" id="ccontact" name="ccontact" value="${customer.contact}" />

            <label for="cpassword">Password:</label>
            <input type="password" id="cpassword" name="cpassword" value="${customer.password}" />

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
