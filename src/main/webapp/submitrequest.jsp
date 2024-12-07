<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Service Request Form</title>
    <style>
    
    body{
    background: linear-gradient(to right, #8B4513, #D2691E);
    
    }
        .service-request-form {
            max-width: 600px;
            margin-top: 20px;
           
            margin-left: 400px;
            padding: 1.5rem;
            background-color:  #f90400;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        .service-request-form h2 {
            text-align: center;
            margin-bottom: 1rem;
        }
        .service-request-form input,
        .service-request-form select,
        .service-request-form textarea {
            width: 90%;
            margin: 0.5rem 0;
            padding: 0.8rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            color:black;
        }
        .service-request-form button {
            width: 30%; /* Adjusted width */
        padding: 8px; /* Reduced padding */
        font-size: 14px; /* Reduced font size */
        font-weight: bold;
        color: white;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        margin-top:15px;
         margin-left:200px;
        cursor: pointer;
        
        transition: background-color 0.3s ease, transform 0.3s ease;
        }
        
        
        
        
        
          input[type="submit"],
    input[type="reset"] {
        width: 45%; /* Adjusted width */
       
        padding: 8px; /* Reduced padding */
        font-size: 14px; /* Reduced font size */
        font-weight: bold;
        color: white;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    .service-request-form button :hover {
        background-color: #45a049;
        transform: scale(1.05);
    }
    input[type="reset"]:hover {
        background-color: #e53935;
        transform: scale(1.05);
    }
        
     option{
     color:black;
     }   
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .service-request-form button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %>
<h3 align="center" style="color:red">
<c:out value="${message }"></c:out></h3>
    <div class="service-request-form">
        <h2>Submit a Service Request</h2>
        <form action="submitServiceRequest" method="post">
        
         <input type="text" name="usid" placeholder="Customer Id" required />
            <input type="text" name="name" placeholder="Your Name" required />
            <input type="text" name="contact" placeholder="Contact Information" required />
          
          
            <select name="requestType" required>
                <option value="">Select Request Type</option>
                <option value="Road Repair">Road Repair</option>
                <option value="Water Supply">Water Supply</option>
                <option value="Garbage Collection">Garbage Collection</option>
                <option value="Street Light Repair">Street Light Repair</option>
            </select>
            <input type="text" name="location" placeholder="Location" required />
            <textarea name="description" placeholder="Description of the issue" required></textarea>
            <label>
                Priority:
                <select name="priority">
                    <option value="Low">Low</option>
                    <option value="Medium">Medium</option>
                    <option value="High">High</option>
                </select>
            </label>
            <label >Date of request:</label>
        <input type="date"  name="date" class="input-field" required><br>
            <button type="submit">Submit Request</button>
        </form>
    </div>
</body>
</html>
