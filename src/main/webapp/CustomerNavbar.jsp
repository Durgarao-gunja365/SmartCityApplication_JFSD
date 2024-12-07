<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%Customer co=(Customer)session.getAttribute("customer"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>


* {
    margin: 0;
    padding: 0;
    box-sizing: content-box;
    color: white;
}

body {
   
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100vh;
 
   
    font-family: poppins;
}

nav {
    width: auto;
}

nav ul {
    display: flex;
    align-items: center;
    gap: 2.5rem;
    justify-content: center;
    background-color: #222;
    height: 60px;
    padding-inline: 1.8rem;
    list-style: none;
    border-radius: 0.5rem;
}

.logo {
    transition: opacity 300ms ease;
    cursor: pointer;
     margin-right: auto;
     height: 50px;
     border-radius: 30px;
}

a {
    text-decoration: none;
}

.link {
    position: relative;
    font-size: 0.9rem;
    
    
}

.link::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    background-color: #fff;
    height: 2px;
    width: 100%;
    border-radius: 5px;
    transform: scaleX(0);
    transition: all 0.6s ease;
}

.link:hover::before{
    transform: scaleX(1);
}

.link1 {
    position: relative;
    font-size: 0.9rem;
    color: red;
    text-decoration: none;
    border-radius: 10px; /* Radius for the main element */
    padding: 4px 8px; /* Optional for a bit of padding */
}

.link1::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    background-color: #fff;
    height: 4px; /* Increase height for a noticeable effect */
    width: 100%;
    border-radius: 5px; /* Radius for the underline effect */
    transform: scaleX(0);
    transition: all 0.6s ease;
}

.link1:hover::before {
    transform: scaleX(1);
}


.logo:hover{
 opacity: 0.5;
 
}
.class {
        text-align: center;
        
        font-family: Arial, sans-serif;
        font-size: 28px;
        font-weight: bold;
        margin-top: 5px;
        padding: 10px;
       
        color: black;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
</style>
<title>JFSD</title>
</head>
<body bgcolor="lightgrey">

<h2 class="class">Smart City Application</h2>


   


    <nav>
     
        <ul>
           <img src="images/smartcitylogo.jpg" alt="Logo" class="logo" /> <!-- Logo image -->
            <li><a href="CustomerHome" class="link">Home</a></li>
             <li><a href="servicespage" class="link">View Services</a></li>
            <li><a href="mapintegration" class="link">Map integration</a></li>
            <li><a href="submitrequest" class="link">Request Servive</a></li>
            <li><a href="CustomerViewRequest" class="link">View Request Servive</a></li>
            <li><a href="viewnewservices" class="link">View New Servive</a></li>
            
            <li><a href="CustomerProfile" class="link">Profile</a></li>
        
            
            <li><a href="customerLogin" class="link">Logout</a></li>
            
            <li class="link1">Welcome : <%=co.getName() %></li>
        </ul>
    </nav>
</body>

</html>