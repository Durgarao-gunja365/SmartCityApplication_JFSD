<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Public Services in Vijayawada</title>
    <style>
    
    body {
             background: linear-gradient(to right, #1c92d2, #f2fcfe); 
        }
    
        /* Main container styling */
       .container {
    text-align: center; /* Center the buttons in the container */
    margin: 20px; /* Add some margin around the container */
}

.container button {
    background-color: #007BFF; /* Bootstrap primary color */
    color: white; /* Text color */
    border: none; /* Remove default border */
    border-radius: 5px; /* Rounded corners */
    padding: 12px 20px; /* Padding for button */
    margin: 10px; /* Space between buttons */
    font-size: 16px; /* Font size */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
}

.container button:hover {
    background-color: #0056b3; /* Darker shade on hover */
    transform: translateY(-2px); /* Slight lift effect */
}

.container button:active {
    transform: translateY(0); /* Reset position when clicked */
    background-color: #004494; /* Even darker shade on active */
}


        /* Card container styling */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            gap: 20px;
        }

        /* General card styling */
        .card {
            width: 300px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
            color: white;
            background-size: cover;
            background-position: center;
            transition: transform 0.3s;
            font-family: Arial, sans-serif;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-title {
            font-size: 24px;
            margin: 10px 0;
        }

        .card button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: rgba(0, 0, 0, 0.7);
        }

        /* Specific card color backgrounds */
        .card-apsrtc {
            background-color: #2c3e50;
            background-image: url('images/bus.jpg'); /* Replace with actual image path */
        }

        .card-railways {
            background-color: #4CAF50;
            background-image: url('images/train.jpg'); /* Replace with actual image path */
        }

        .card-cabs {
            background-color: #f39c12;
            background-image: url('images/cab.jpg'); /* Replace with actual image path */
        }

        .card-airport {
            background-color: #3498db;
            background-image: url('images/airport.jpg'); /* Replace with actual image path */
        }

        /* Healthcare card backgrounds */
        .card-hospital {
            background-color: #e74c3c;
            background-image: url('images/hospital.jpg'); /* Replace with actual image path */
        }

        .card-phc {
            background-color: #8e44ad;
            background-image: url('images/phc.jpg'); /* Replace with actual image path */
        }

        .card-uhc {
            background-color: #2980b9;
            background-image: url('images/uhc.jpg'); /* Replace with actual image path */
        }

        /* Education Services card backgrounds */
        .card-public-schools {
            background-color: #e67e22;
            background-image: url('images/school.jpg'); /* Replace with actual image path */
        }

        .card-colleges {
            background-color: #16a085;
            background-image: url('images/college.jpg'); /* Replace with actual image path */
        }

        .card-libraries {
            background-color: #f1c40f;
            background-image: url('images/library.jpg'); /* Replace with actual image path */
        }

        /* Law and Order card backgrounds */
        .card-police {
            background-color: #c0392b;
            background-image: url('images/police.jpg'); /* Replace with actual image path */
        }

        .card-fire {
            background-color: #e74c3c;
            background-image: url('images/fire.jpg'); /* Replace with actual image path */
        }

        /* Water and Sanitation card backgrounds */
        .card-water-supply {
            background-color: #3498db;
            background-image: url('images/water.jpg'); /* Replace with actual image path */
        }

        .card-sewage {
            background-color: #2ecc71;
            background-image: url('images/sewage.jpg'); /* Replace with actual image path */
        }

        /* Electricity Supply card backgrounds */
        .card-electrical {
            background-color: #8e44ad;
            background-image: url('images/electricity.jpg'); /* Replace with actual image path */
        }

        /* PDS card backgrounds */
        .card-ration {
            background-color: #f39c12;
            background-image: url('images/ration.jpg'); /* Replace with actual image path */
        }

        /* Social Welfare card backgrounds */
        .card-welfare {
            background-color: #2c3e50;
            background-image: url('images/welfare.jpg'); /* Replace with actual image path */
        }

        .card-women-child {
            background-color: #e74c3c;
            background-image: url('images/women-child.jpg'); /* Replace with actual image path */
        }

        /* Tourism card backgrounds */
        .card-tourist {
            background-color: #3498db;
            background-image: url('images/tourism.jpg'); /* Replace with actual image path */
        }

        .card-cultural {
            background-color: #e67e22;
            background-image: url('images/cultural.jpg'); /* Replace with actual image path */
        }

        /* Agricultural Services card backgrounds */
        .card-agricultural {
            background-color: #16a085;
            background-image: url('images/agriculture.jpg'); /* Replace with actual image path */
        }

        .card-market {
            background-color: #f1c40f;
            background-image: url('images/market.jpg'); /* Replace with actual image path */
        }

        /* Toggleable section styling */
        #publicServicesSection, #healthcareServicesSection, #educationServicesSection, #lawOrderSection, #waterSanitationSection, #electricitySection, #pdsSection, #socialWelfareSection, #tourismSection, #agriculturalSection {
            display: none;
            margin-top: 50px;
        }
    </style>

    <script>
        function toggleSection(sectionId) {
            const section = document.getElementById(sectionId);
            if (section.style.display === 'none' || section.style.display === '') {
                section.style.display = 'block';
                section.scrollIntoView({ behavior: 'smooth' });
            } else {
                section.style.display = 'none';
            }
        }
    </script>
</head>
<body>
<%@include file="mainNavbar.jsp" %>
    <div class="container">
        <!-- Buttons to toggle sections -->
        <button onclick="toggleSection('publicServicesSection')">Road Infrastructure</button>
        <button onclick="toggleSection('healthcareServicesSection')">Rail Infrastructure</button>
        <button onclick="toggleSection('educationServicesSection')">Airport</button>
        <button onclick="toggleSection('lawOrderSection')">Utilities</button>
        <button onclick="toggleSection('waterSanitationSection')">Communication Infrastructure</button>
        <button onclick="toggleSection('electricitySection')">Future Infrastructure Projects</button>
       
    </div>

    <!-- Transportation Services Section -->
    <div id="publicServicesSection">
        <h2 style="text-align:center; color: #333;">Road Infrastructure</h2>
        <div class="card-container">
            <div class="card card-apsrtc">
                <div class="card-title">Major Highways</div>
                <p>Vijayawada is well-connected by National Highways (NH-16 and NH-65), facilitating smooth travel to other major cities in Andhra Pradesh and neighboring states.</p>
                <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-railways">
                <div class="card-title">Urban Roads</div>
                <p>The city has a network of well-maintained urban roads that support local traffic, including arterial roads and inner city streets.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-cabs">
                <div class="card-title">Flyovers and Bridges</div>
                <p>Available for convenient local commuting within the district.</p>
                 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>


        </div>
    </div>

    <!-- Healthcare Services Section -->
    <div id="healthcareServicesSection">
        <h2 style="text-align:center; color: #333;">Rail Infrastructure</h2>
        <div class="card-container">
            <div class="card card-hospital">
                <div class="card-title">Vijayawada Junction</div>
                <p>This is one of the busiest railway stations in India, offering extensive rail connectivity. It serves as a major hub for both passenger and freight trains, linking the city to various parts of the country.</p>
                 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-phc">
                <div class="card-title">Future Developments</div>
                <p>Plans are in place for further enhancements to the railway infrastructure, including the expansion of platforms and services.</p>
 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

        </div>
    </div>

    <!-- Education Services Section -->
    <div id="educationServicesSection">
               <h2 style="text-align:center; color: #333;">Airport</h2>
        <div class="card-container">
            <div class="card card-public-schools">
                <div class="card-title">Vijayawada Airport: </div>
                <p>: Located about 20 kilometers from the city center, it provides domestic flight services to major Indian cities. The airport is undergoing expansion to accommodate increasing passenger traffic</p>
             <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

        </div>
    </div>

    <!-- Law and Order Section -->
    <div id="lawOrderSection">
       <h2 style="text-align:center; color: #333;">Utilities</h2>
        <div class="card-container">
            <div class="card card-police">
                <div class="card-title">Water Supply</div>
                <p>The Vijayawada Municipal Corporation (VMC) manages the city's water supply, providing treated drinking water through a network of pipelines. Efforts are ongoing to improve water quality and reduce wastage.</p>
            <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-fire">
                <div class="card-title">Sewage Management: </div>
                <p>VMC also oversees sewage treatment and management, with projects aimed at enhancing the sewage treatment capacity and improving sanitation facilities</p>
                <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
            
            <div class="card card-sewage">
                <div class="card-title">Electricity Supply</div>
                <p>The Andhra Pradesh Southern Power Distribution Company Limited (APSPDCL) is responsible for electricity distribution in the region, ensuring reliable power supply to residents and businesses.</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

        </div>
    </div>

    <!-- Water and Sanitation Section -->
    <div id="waterSanitationSection">
                <h2 style="text-align:center; color: #333;">Communication Infrastructure</h2>
        <div class="card-container">
            <div class="card card-water-supply">
                <div class="card-title">Telecommunications</div>
                <p>Vijayawada has a robust telecommunications network, with multiple service providers offering mobile and broadband services. The city is well-connected to the digital world, facilitating communication for residents and businesses</p>
                 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

        </div>
    </div>

    <!-- Electricity Supply Section -->
    <div id="electricitySection">
        <h2 style="text-align:center; color: #333;">Future Infrastructure Projects</h2>
        <div class="card-container">
            <div class="card card-electrical">
                <div class="card-title">APSPDCL</div>
                <p>Responsible for electricity distribution and maintenance in the district.</p>
                <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

        </div>
    </div>

    

   

   
   
</body>
</html>
