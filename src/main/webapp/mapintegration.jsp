<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Map Integration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background: linear-gradient(to right, #8B4513, #D2691E);
        }

        .container {
            padding: 2px;
        }

        h1 {
            color: black;
        }

        .map-container {
            margin-top: 20px;
        }

        input[type="text"] {
            padding: 10px;
            width: 40%;
            margin-right: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            color : black;
        }

        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        #map {
            width: 100%;
            height: 400px;
            margin-top: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        #map iframe {
            width: 100%;
            height: 450px;
            border: 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %><br>
 <h2>Map Integration</h2>
<div class="container">
       
        <form id="routeForm">
            <input type="text" id="source" placeholder="Enter Source">
            <input type="text" id="destination" placeholder="Enter Destination">
            <button type="submit">Calculate Route</button>
        </form>

        <!-- Google Maps Section -->
        <section id="location">
            <h3>Our Location</h3>
            <p>Visit our city administration office at the following address:</p>
            <div id="map">
                <!-- Embed a Google Map with the location of the city administration office -->
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37055.20791552246!2d80.61667324597813!3d16.50605207916665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a3bfa920000003f%3A0x427a59b59c582380!2sVijayawada%2C+Andhra+Pradesh!5e0!3m2!1sen!2sin!4v1692361942234"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy">
                </iframe>
            </div>
        </section>
    </div>

</body>
</html>