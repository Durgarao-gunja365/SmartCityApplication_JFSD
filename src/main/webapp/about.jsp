<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
           background: linear-gradient(to right, #1c92d2, #f2fcfe);
        }
        
        .card-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 25px;
            margin-top: 100px;
            padding: 10px;
        }
        
        .card {
            width: 325px;
            background-color: #f4f4f4;
            border-radius: 10px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            transition: transform 0.6s ease;
        }
        
        .card:hover {
            transform: translateY(-20px);
        }
        
        .card img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }
        
        .card-content {
            padding: 20px;
        }
        
        .card-content h1 {
            font-size: 24px;
             color: black;
             text-align:center;
            margin-bottom: 10px;
        }
        
        .card-content p {
            font-size: 20px;
            color: black;
            text-align:center;
    
    margin-bottom:10px;
        }
        
        .card-button {
            display: inline-block;
            background-color: #349;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            padding: 6px;
        }
        
        .hero {
            background-color: #fdf5e6;
            overflow: hidden;
        }
        
        .hero1 {
            background-color: #f0ffff;
            overflow: hidden;
        }
        
        .hero2 {
            background-color: #f5f5dc;
            overflow: hidden;
        }
        
        .heading h1 {
            color: #ff6347;
            font-size: 55px;
            text-align: center;
            margin-top: 35px;
        }
        
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 90%;
            margin: 65px auto;
        }
        
        .hero-content h2 {
            font-size: 38px;
            margin-bottom: 20px;
            color: #333;
        }
        
        .hero-content p {
            font-size: 24px;
            line-height: 1.5;
            margin-bottom: 40px;
            color: #666;
        }
        
        .hero1-content p {
            font-size: 24px;
            line-height: 1.5;
            margin-bottom: 40px;
            color: #fff;
        }
        
        .hero-content button {
            display: inline-block;
            background-color: #ff6347;
            color: #fff;
            padding: 12px 24px;
            border-radius: 5px;
            font-size: 20px;
            border: none;
            cursor: pointer;
            transition: 0.3s ease;
        }
        
        .hero-content {
            flex: 1;
            width: 600px;
            margin: 0px 25px;
            animation: fadeInUp 2s ease;
        }
        
        .hero-content button:hover {
            background-color: #ff6347;
            transform: scale(1.1);
        }
        
        .hero-image {
            flex: 1;
            width: 600px;

            margin: auto;
            animation: fadeInRight 2s ease;
        }
        
        @media screen and (max-width: 768px) {
            .heading h1 {
                font-size: 45px;
                margin-top: 30px;
            }
            
            .hero {
                margin: 0px;
            }
            
            .container {
                width: 100%;
                flex-direction: column;
                margin: 0px;
                padding: 0px 40px;
            }
            
            .hero-content {
                width: 100%;
                margin: 35px 0px;
            }
            
            .hero-content h2 {
                font-size: 30px;
            }
            
            .hero-content p {
                font-size: 18px;
                margin-bottom: 20px;
            }
            
            .hero-content button {
                font-size: 16px;
                padding: 8px 16px;
            }
            
            .hero-image {
                width: 100%;
            }
        }
        
        .img {
            width: 100%;
            height: 40ex;
            border-radius: 10px;
        }
        p{
        color: black;
        font: 20px;
        }
        
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0px);
            }
        }
        
        @keyframes fadeInRight {
            0% {
                opacity: 0;
                transform: translateX(-50px);
            }
            100% {
                opacity: 1;
                transform: translateX(0px);
            }
        }
        
        
    ion-icon {
    color: black; /* Set this to any color that fits your design */
    font-size: 24px; /* Adjust the size if needed */
    padding: 10px;'
    </style>
</head>

<body>
<%@include file="mainNavbar.jsp" %>


    <section class="hero">
        <div class="heading">
            <h1>About Project</h1>
        </div>
        <div class="container">
            <div class="hero-content">
                <h2>Admin Role</h2>
                <p>The admin is responsible for managing and maintaining the smart city application. They oversee user profiles, verify and resolve service requests, and ensure information across the platform is current and accurate. The admin also has the ability to add or update public notices, coordinate with other city officials to improve city services, and monitor analytics to understand user engagement and optimize services further. This role is crucial in keeping the smart city platform functional, secure, and beneficial for all users.</p>
                <button class="cta-button">Learn more</button>
            </div>
            <div class="hero-image">
                <img class="img" src="images/admin.jpg">
            </div>
        </div>
    </section>

    <section class="hero1">
        <div class="container">
            <div class="hero-content">
                <h2>Normal User Role</h2>
                <p>Normal users are visitors to the smart city application who can explore various public information without needing to log in. They have access to view essential city services, browse events, and check the latest updates on infrastructure projects. This role ensures that everyone can gain insights into city amenities and services, encouraging community involvement and awareness.</p>
                <button class="cta-button">Learn more</button>
            </div>
            <div class="hero-image">
                <img class="img" src="images/user.jpg">
            </div>
        </div>
    </section>

    <section class="hero2">
        <div class="container">
            <div class="hero-content">
                <h2>Logged-in User Role</h2>
                <p>Logged-in users have access to a broader range of personalized services. They can submit service requests, access local government services, and monitor the status of applications like permits or utilities. Additionally, logged-in users can receive alerts on relevant events, upcoming developments, and respond to surveys or polls, fostering a more interactive and customized experience within the smart city environment.</p>
                <button class="cta-button">Learn more</button>
            </div>
            <div class="hero-image">
                <img class="img" src="images/Darling_1.jpg" alt="About Image">
            </div>
        </div>
    </section>

    <footer style="background-color:#5956A5">
        <h2 style="text-align: center; color: #fff; font-size: 35px;">Our Team Members</h2>
        <div class="card-container">
        <div class="card">
            <img src="images/durga_chair.jpg" alt="Avatar" style="width:300px;height:300px;">
            <div class="card-content">
                <h1 class="p">GUNJA DURGA RAO</h1>
                <p>B-TECH(STUDENT)</p>
                <p>team lead</p>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-facebook"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-twitter"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-linkedin"></ion-icon></a>
                <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                
            </div>
        </div>
        
        <div class="card">
            <img src="images/darling.jpg" alt="Avatar" style="width:300px;height:300px;">
            <div class="card-content">
                <h1>VASUNDHARA</h1>
                <p>B-TECH(STUDENT)</p>
                <p>We love that guy</p>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-facebook"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-twitter"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-linkedin"></ion-icon></a>
                <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
            </div>
        </div>

        <div class="card">
            <img src="images/Darling_1.jpg" alt="Avatar" style="width:300px;height:300px;">
            <div class="card-content">
                <h1>LASYA PRIYA</h1>
                <p>B-TECH(STUDENT)</p>
                <p>We love that guy</p>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-facebook"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-twitter"></ion-icon></a>
                <a href="#" style="margin-right: 20px;"><ion-icon name="logo-linkedin"></ion-icon></a>
                <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
            </div>
        </div>
    </div>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>

