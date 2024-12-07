<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%Customer c=(Customer)session.getAttribute("customer"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>

<style >
body{
background: linear-gradient(to right, #8B4513, #D2691E);

        h1 {
            color: #333;
            text-align: center;
        }

        .container {
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        .card-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: 20px;
            text-align: center;
            font-family: Arial;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;

            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: fix;
  text-align: center;
  font-family: arial;
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .title {
            color: grey;
            font-size: 18px;
        }

        button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 10px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            border-radius: 0 0 10px 10px;
        }

        button:hover {
            opacity: 0.7;
        }

       

        a:hover {
            opacity: 0.7;
        }
        
        
        
        /* Sample CSS for the footer cards */
.card-container1{
    display:flex;
    justify-content:center;
    flex-wrap:wrap;
    gap:25px;
    margin-top:10px;
    padding:10px;
    }
.card1{
    width:325px;
    background-color:#f4f4f4;
    border-radius:10px;
    box-shadaw:0px 2px 4px rgba(0,0,0,0.3);
    overflow:hidden;
    transition:transform 0.6s ease;
    }
    .card1:hover{
    transform: translateY(-20px);
    }
    .card1 img{
    width:100%;
    height:50%;
    object-fit:cover;
    }
    .card-content1{
    padding:20px;
    }
    .card-content1 h1{
    font-size:24px;
    margin-bottom:10px;
    }
    .card-content1 p{
    font-size:20px;
    color:black;
    text-align:center;
    
    margin-bottom:10px;
    }
   
    ion-icon {
    color: black; /* Set this to any color that fits your design */
    font-size: 24px; /* Adjust the size if needed */
    padding: 10px;'
}
     
     
     
     
     section.card {
  position: relative;
  width: 250px;
  height: 250px;
  background-color: #f2f2f2;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  perspective: 1000px;
  transition: all 0.8s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
.card svg {
  fill: #000;
  transition: all 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  border-radius: 3px;
}
.card:hover {
  transform: scale(1.05);
  box-shadow: 0 8px 16px #000000;
  background-color: #f2f2f2;
  color: #ffffff;
}

.card__content {
  color: #000000;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 20px;
  box-sizing: border-box;
  background-color: #f2f2f2;
  transform: rotateX(-90deg);
  transform-origin: bottom;
  transition: all 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.card:hover .card__content {
  transform: rotateX(0deg);
}

.card__title {
  margin: 0;
  padding-left: 5px;
  font-size: 24px;
  color: #000000;
  font-weight: 700;
}

.card:hover svg {
  scale: 0;
}

.card__description {
  margin: 10px 0 0;
  font-size: 14px;
  color: #000000;
  line-height: 1.4;
}
     
     .card-container {
  display: flex;
  justify-content: space-around;
  align-items: center;
  gap: 20px; /* Adjusts the space between the cards */
  padding: 20px;
  flex-wrap: wrap; }
  
  .card-heading {
  font-size: 18px;
  color: brown;
  font-weight: bold;
  text-align: center;
  margin-bottom: 10px;
}
  
  .card {
  width: 250px;
  height: 300px;
  background-color: #f2f2f2;
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  padding: 15px;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  transition: transform 0.3s ease;
}
  
   .card img {
        width: 250px;  /* Set desired width */
        height: 250px; /* Set desired height */
        object-fit: cover; /* Ensure the image covers the area while maintaining aspect ratio */
        border-radius: 5px;
    }
        
        
        .card__description ul {
    list-style-type: none;
    padding: 0;
    margin: 15px 0;
    text-align: left;
}

.card__description li {
    padding: 8px 0;
    font-size: 0.9em;
    border-bottom: 1px solid #ddd;
    display: flex;
    
    color:black;
}

/* Highlight Icons */
.card__description li::before {
    content: "✓"; /* You can use an icon here if preferred */
    color: black;
    font-weight: bold;
    margin-right: 8px;
}
.card__description {
    font-size: 0.95em;
    color: #555;
    line-height: 1.6;
}

}
h2{
color:black;
align:center
}



table { width: 100%; border-collapse: collapse; margin-top: 20px; animation: fadeIn 1s ease-in-out; }
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
 tbody tr:nth-child(odd) { background-color: #ffffff; } 
tbody tr:nth-child(even) { background-color: #ffffff; }
 @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } } 
@keyframes slideIn { from { transform: translateY(20px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
 tbody tr { animation: slideIn 0.5s ease-in-out; }
 
 
</style>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %>

<%-- <h2 style="align:right">Welcome : <%=c.getName() %></h2> --%>
<div class="container"> <h2 color:"blue">Vijayawada City Details</h2> <table> <thead> <tr> <th>Attribute</th> <th>Details</th> </tr> </thead> <tbody> <tr> <td>Population</td> <td>1,048,240 (as per 2021 census)</td> </tr> <tr> <td>Area</td> <td>61.88 km²</td> </tr> <tr> <td>Police Stations</td> <td>14</td> </tr> <tr> <td>Hospitals</td> <td>50+ major hospitals</td> </tr> <tr> <td>Educational Institutions</td> <td>200+ schools and colleges</td> </tr> <tr> <td>Railway Stations</td> <td>1 major station (Vijayawada Junction)</td> </tr> <tr> <td>Airports</td> <td>Vijayawada International Airport</td> </tr> <tr> <td>Temples</td> <td>Kanaka Durga Temple, Undavalli Caves</td> </tr> <tr> <td>Parks</td> <td>Rajiv Gandhi Park, VMC Disney Land</td> </tr> <tr> <td>Shopping Malls</td> <td>PVP Square, Trendset Mall</td> </tr> </tbody> </table> </div>

       
<footer >
  <div style="background-color: #444; color: white; padding: 30px; text-align: center; font-size: 16px; bottom: 0; border-top: 5px  solid #FF5722;">  
  <p style="margin: 0; font-weight: bold;">&copy; 2024 City Information Hub. All Rights Reserved.</p>  
  <p style="margin: 10px 0;">  
    <a href="privacy-policy.html" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Privacy Policy</a>  
    |  
    <a href="terms-of-service.html" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Terms of Service</a>  
    |  
    <a href="contact-us.html" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Contact Us</a>  
  </p>  
  <div style="margin-top: 10px;">  
    <a href="#" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Facebook</a>  
    <a href="#" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Twitter</a>  
    <a href="#" style="color: #FF5722; text-decoration: none; margin: 0 15px; transition: color 0.3s;">Instagram</a>  
  </div>  
  <style>  
    a:hover {  
      color: #FFFFFF;  
      text-shadow: 0 0 5px #FF5722;  
    }  
  </style>  
</div>

</footer>
</body>
</html>