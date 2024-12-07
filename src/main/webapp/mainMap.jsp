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
           background: linear-gradient(to right, #1c92d2, #f2fcfe);
        }

        .container {
            padding: 2px;
        }

        h1 {
            color: black;
            
        }
         h3 {
            color: black;
        }
 p {
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
            color:black;
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
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>
</head>
<body>
<%@include file="mainNavbar.jsp" %><br>
 <h1 >Map Integration</h2>
<div class="container">
       
        <form id="routeForm">
            <input type="text" id="source" placeholder="Enter Source">
            <input type="text" id="destination" placeholder="Enter Destination">
            <button type="submit">Calculate Route</button>
        </form><br>
         <script>
        // Initialize the map and directions services
        let map, directionsService, directionsRenderer;

        function initMap() {
            map = new google.maps.Map(document.getElementById("map"), {
                center: { lat: 16.506052, lng: 80.616673 }, // Centered in Vijayawada, Andhra Pradesh
                zoom: 13,
            });
            directionsService = new google.maps.DirectionsService();
            directionsRenderer = new google.maps.DirectionsRenderer();
            directionsRenderer.setMap(map);
        }

        // Function to calculate and display route
        function calculateRoute(event) {
            event.preventDefault();
            const source = document.getElementById("source").value;
            const destination = document.getElementById("destination").value;

            if (source && destination) {
                directionsService.route(
                    {
                        origin: source,
                        destination: destination,
                        travelMode: google.maps.TravelMode.DRIVING,
                    },
                    (result, status) => {
                        if (status === google.maps.DirectionsStatus.OK) {
                            directionsRenderer.setDirections(result);
                        } else {
                            alert("Unable to calculate route: " + status);
                        }
                    }
                );
            } else {
                alert("Please enter both source and destination.");
            }
        }

        // Event listener for form submission
        document.getElementById("routeForm").addEventListener("submit", calculateRoute);

        // Initialize map
        initMap();
    </script>

        <!-- Google Maps Section -->
        <section id="location">
            <h3>Our Location</h3><br><br>
            <p >Visit our city administration office at the following address:</p>
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