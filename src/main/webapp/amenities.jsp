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
        <button onclick="toggleSection('publicServicesSection')">Parks</button>
        <button onclick="toggleSection('healthcareServicesSection')">Libraries</button>
        <button onclick="toggleSection('educationServicesSection')">Hospitals</button>
        <button onclick="toggleSection('lawOrderSection')">Schools</button>
        <button onclick="toggleSection('waterSanitationSection')">Other Amenities</button>
  
    </div>

    <!-- Transportation Services Section -->
    <div id="publicServicesSection">
        <h2 style="text-align:center; color: #333;">Parks</h2>
        <div class="card-container">
            <div class="card card-apsrtc">
                <div class="card-title">Rajiv Gandhi Park</div>
                <p>Located near the Prakasam Barrage, this park offers beautiful landscaping, walking trails, and a musical fountain, making it popular among families and tourists.</p>
              <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-railways">
                <div class="card-title">VMC Disney Land: </div>
                <p>A children's park with recreational activities, rides, and entertainment specifically designed for kids.</p>
 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>            </div>

            <div class="card card-cabs">
                <div class="card-title">Bhavani Island</div>
                <p>Situated on the Krishna River, it provides a scenic escape with lush greenery, water sports, and picnic spots</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            
        </div>
    </div>

    <!-- Healthcare Services Section -->
    <div id="healthcareServicesSection">
        <h2 style="text-align:center; color: #333;">Libraries</h2>
        <div class="card-container">
            <div class="card card-hospital">
                <div class="card-title">Krishna District Central Library</div>
                <p>Offers an extensive collection of books, periodicals, and reading material for residents and students.</p>
            <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-phc">
                <div class="card-title">VMC Reading Room and Library</div>
                <p>Another public reading space managed by the Vijayawada Municipal Corporation, providing a quiet area for study and research.</p>
          <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-uhc">
                <div class="card-title">Maris Stella College Library</div>
                <p>Although part of a college, this library is a resource for students and sometimes accessible to the public for educational purposes.</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
        </div>
    </div>

    <!-- Education Services Section -->
    <div id="educationServicesSection">
        <h2 style="text-align:center; color: #333;">Hospitals</h2>
        <div class="card-container">
            <div class="card card-public-schools">
                <div class="card-title">Government General Hospital</div>
                <p>A major healthcare provider in the city, offering both primary and specialty services.</p>
             <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-colleges">
                <div class="card-title">Andhra Hospitals</div>
                <p>Known for its range of medical facilities and multispecialty services</p>
             <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-libraries">
                <div class="card-title">Manipal Hospitals Vijayawada</div>
                <p>Part of a larger hospital network providing advanced medical care.</p>
              <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
            
            <div class="card card-libraries">
                <div class="card-title">Ramesh Hospitals</div>
                <p>well-known healthcare provider in Vijayawada, specializing in cardiology and emergency services.</p>
              <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
        </div>
    </div>

    <!-- Law and Order Section -->
    <div id="lawOrderSection">
        <h2 style="text-align:center; color: #333;">Schools</h2>
        <div class="card-container">
            <div class="card card-police">
                <div class="card-title">Sri Chaitanya School</div>
                <p>Known for its competitive academics, focusing on preparing students for entrance exams.</p>
                <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-fire">
                <div class="card-title">Narayana E-Techno School</div>
                <p>Emphasizes a blend of academic and technology-based learning.</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
            <div class="card card-colleges">
                <div class="card-title">V.P. Siddhartha Public School </div>
                <p>: Provides a holistic education with a focus on extracurricular activities.</p>
              <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
             <div class="card card-electrical">
                <div class="card-title">Delhi Public School (DPS) </div>
                <p>Part of a nationwide network, DPS offers CBSE curriculum with modern facilities and infrastructure.</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
        </div>
    </div>

    <!-- Water and Sanitation Section -->
    <div id="waterSanitationSection">
        <h2 style="text-align:center; color: #333;">Other Amenities</h2>
        <div class="card-container">
            <div class="card card-public-schools">
                <div class="card-title">Malls and Shopping Centers</div>
                <p>PVP Square Mall and LEPL Icon Mall are popular places for shopping, dining, and entertainment.</p>
              <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-colleges">
                <div class="card-title">Sports Facilities </div>
                <p>: Indira Gandhi Municipal Stadium and other sports complexes in the city provide venues for sports events and fitness activities</p>
             <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-libraries">
                <div class="card-title">Temples and Cultural Sites</div>
                <p>Kanaka Durga Temple on Indrakeeladri Hill is a prominent spiritual site and attracts thousands of devotees.</p>
             <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
            
            
        </div>
    </div>

    <!-- Electricity Supply Section -->
    <div id="electricitySection">
        <h2 style="text-align:center; color: #333;">Electricity Supply</h2>
        <div class="card-container">
           
        </div>
    </div>

    <!-- Public Distribution System Section -->
    <div id="pdsSection">
        <h2 style="text-align:center; color: #333;">Public Distribution System (PDS)</h2>
        <div class="card-container">
            <div class="card card-ration">
                <div class="card-title">Ration Shops</div>
                <p>Affordable food grains and essential goods for eligible citizens.</p>
                 <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
        </div>
    </div>

    <!-- Social Welfare Services Section -->
    <div id="socialWelfareSection">
        <h2 style="text-align:center; color: #333;">Social Welfare Services</h2>
        <div class="card-container">
            <div class="card card-welfare">
                <div class="card-title">Welfare Schemes</div>
                <p>Government programs for disadvantaged groups and minorities.</p>
               <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>

            <div class="card card-women-child">
                <div class="card-title">Women and Child Welfare</div>
                <p>Services like Anganwadi centers and nutrition education schemes.</p>
            <p style="text-shadow: 1px 1px 4px black;">Location : benz circle</p>
            </div>
        </div>
    </div>

    <!-- Tourism and Cultural Services Section -->
    <div id="tourismSection">
        <h2 style="text-align:center; color: #333;">Tourism and Cultural Services</h2>
        <div class="card-container">
            <div class="card card-tourist">
                <div class="card-title">Tourist Information Centers</div>
                <p>Facilities guiding tourists visiting Kanaka Durga Temple, Bhavani Island, and more.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-cultural">
                <div class="card-title">Cultural Events</div>
                <p>Organized events for festivals like Dasara and Ugadi.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>

    <!-- Agricultural Services Section -->
    <div id="agriculturalSection">
        <h2 style="text-align:center; color: #333;">Agricultural Services</h2>
        <div class="card-container">
            <div class="card card-agricultural">
                <div class="card-title">Agricultural Advisory Centers</div>
                <p>Support for farmers with subsidies, seeds, and training.</p>
                <button>Learn More</button>
            </div>

            <div class="card card-market">
                <div class="card-title">Market Yards</div>
                <p>Facilities for trading and purchasing agricultural produce at fair prices.</p>
                <button>Learn More</button>
            </div>
        </div>
    </div>
</body>
</html>
