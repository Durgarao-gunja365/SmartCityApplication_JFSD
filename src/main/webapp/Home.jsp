<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
        body {
             background: linear-gradient(to right, #1c92d2, #f2fcfe); 
             
             font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
           
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        

        h1 {
            color: #333;
            text-align: center;
        }

        .container {
            padding: 20px;
            max-width: 100%;
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

.slider-container {
            position: relative;
            width: 100%;
            height: 80vh;
            overflow: hidden;
            /* border-radius: 15px; */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .slider {
            display: flex;
            width: 100%;
            height: 100%;
            animation: slide 20s infinite;
        }
        .slider img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            flex-shrink: 0;
             object-position: center;
           
        }
        @keyframes slide {
            0% { transform: translateX(0); }
            20% { transform: translateX(-100%); }
            40% { transform: translateX(-200%); }
            60% { transform: translateX(-300%); }
            80% { transform: translateX(-400%); }
            100% { transform: translateX(0); }
        }
        .slider-container:hover .slider {
            animation-play-state: paused; /* Pause animation on hover */
        }


    </style>
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <!-- Add your CSS file if it's external -->
    <link rel="stylesheet" href="path/to/your/style.css">
</head>
<body>
<%@include file="mainNavbar.jsp" %>
<br>
<!-- <marquee behavior="slide" direction="" scrollamount="100%"><h1>*** City Information Hub***</h1></marquee>
 --><div class="slider-container">
        <div class="slider">
            <img src="images/i7.jpg" alt="Image 1">
            <img src="images/i2.jpg" alt="Image 2">
            <img src="images/i3.jpg" alt="Image 3">
            <img src="images/i4.jpg" alt="Image 4">
            <img src="images/i6.jpeg" alt="Image 5">
        </div>
    </div>
 <div class="container">
        
<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center; width:100%;">Public Services Information</h1>
<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Railways</h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.xR_0mBNQvDru4Sn1y8Xw3QHaE8?rs=1&pid=ImgDetMain" alt="Railways Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
  Vijayawada Railway Station is one of the busiest and most important stations in South India. 
                Located on the Chennai-Delhi line, it serves as a major transit point, connecting various parts of the country.
     
                   </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Hospitals</h3> <!-- Card Title -->
    <img src="https://thumbs.dreamstime.com/z/hospital-building-modern-parking-lot-59693686.jpg" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
       City General Hospital is committed to providing top-quality healthcare services. With a team of experienced professionals and state-of-the-art facilities, we ensure compassionate and comprehensive care for all.
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">Education</h3> <!-- Card Title -->
    <img src="https://media.consumeraffairs.com/files/news/Hospital_building_JazzIRT_GI.jpg" alt="Education Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        City University is a premier institution dedicated to nurturing talent and fostering innovation. We offer a wide range of undergraduate, postgraduate, and doctoral programs designed to equip students with the knowledge and skills needed for their future careers.
      </p>
    </div>
  </section>
</div>
<a href="publicservices" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here for more
    </button>
</a>
<br>

<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center;">Infrastructure Services Information</h1>

<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Roads </h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.sLhtaFUELedN3St0CFhsngHaEo?rs=1&pid=ImgDetMain" alt="Railways Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Description of railway services, schedules, and updates. Everything you need to know about the railway services in the city.
      </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Airports</h3> <!-- Card Title -->
    <img src="https://static1.simpleflyingimages.com/wordpress/wp-content/uploads/2023/01/am_05_2022_amf4846.jpg" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Information on hospital locations, services, emergency contacts, and health resources available in the city.
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">Construction</h3> <!-- Card Title -->
    <img src="https://th.bing.com/th/id/OIP.RCp2Haiyao-2QSxiUziDuwHaE8?rs=1&pid=ImgDetMain" alt="Education Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Details on education services, schools, colleges, and educational resources available within the city.
      </p>
    </div>
  </section>
</div>
<a href="infrastructure" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here for more
    </button>
</a>
<br>
<h1 style="background-color: #F5DEB3; padding: 10px; color: brown; text-align: center;">Amenities</h1>


<div class="card-container">
  <!-- Card 1 -->
  <section id="card1" class="card">
    <h3 class="card-heading">Temples</h3> <!-- Card Title -->
    <img src="https://tirupatitirumalainfo.com/wp-content/uploads/2018/12/Vijayawada-Kanaka-Durga-Temple.jpg" alt="Railways Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Description of railway services, schedules, and updates. Everything you need to know about the railway services in the city.
      </p>
    </div>
  </section>

  <!-- Card 2 -->
  <section id="card2" class="card">
    <h3 class="card-heading">Parks</h3> <!-- Card Title -->
    <img src="https://s1.it.atcdn.net/wp-content/uploads/2014/10/Hyde-Park-2.jpg" alt="Hospital Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Information on hospital locations, services, emergency contacts, and health resources available in the city.
      </p>
    </div>
  </section>

  <!-- Card 3 -->
  <section id="card3" class="card">
    <h3 class="card-heading">MalLs</h3> <!-- Card Title -->
    <img src="https://threebestrated.in/images/PVPSquare-Vijayawada-AP-2.jpeg" alt="Education Service" height="100" width="100" style="border-radius: 5px;">
    <div class="card__content">
      <p class="card__title">Service Details</p>
      <p class="card__description">
        Details on education services, schools, colleges, and educational resources available within the city.
      </p>
    </div>
  </section>
</div>

<a href="amenities" style="text-decoration: none;">
    <button style="background-color: #4CAF50; color: white; padding: 10px 10px; border: none; border-radius: 5px; font-size: 14px; cursor: pointer; width: 200px; margin: auto; display: block;">
        Click here for more
    </button>
</a><br>
<!-- 
        Card Grid
        <div class="card-grid">
            Card 1
            <div class="card">
                <img src="https://meditationinmadison.org/wp-content/uploads/2019/10/Public-Service-Web-Image.png" alt="Public Services">
                <h1>Public Services</h1>
                <p class="title">A catalog of public services (e.g., waste management, public transportation, emergency services).</p>
              <p><a href="publicservices"><button>Explore</button></a></p>

            </div>

            Card 2
            <div class="card">
                <img src="https://th.bing.com/th/id/R.d675a589d8d656f0ea659d9863f9d70b?rik=aeq%2b0lMys%2bNYLQ&riu=http%3a%2f%2fwww.axiomtek.co.uk%2fDownload%2fimages%2fsmart-city-infrastructure.jpg&ehk=qDqtkwiwiyUnxUm3eo1Rj%2fEXopX5cH5%2fF9atnuxql40%3d&risl=&pid=ImgRaw&r=0">
                <h1>Infrastructure</h1>
                <p class="title">analyzing city infrastructure (roads, utilities, etc.).</p>
                 <p><a href="infrastructure"><button>Explore</button></a></p>
            </div>

            Card 3
            <div class="card">
                <img src="https://brigadeprelaunch.com/brigade-mount-road-chennai/images/amen2.jpg">
                <h1>Amenities</h1>
                <p class="title">Information about parks, libraries, hospitals, schools, etc.</p>
                <p><a href="amenities"><button>Explore</button></a></p>
            </div>
    </div>
 -->
<footer >
  <div style="background-color: #444; color: white; padding: 30px; text-align: center; font-size: 16px; bottom: 0; border-top: 5px  solid #FF5722;">  
  <p style="margin: 0; font-weight: bold;">&copy; 2024 Durgarao And Group. All Rights Reserved.</p>  
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