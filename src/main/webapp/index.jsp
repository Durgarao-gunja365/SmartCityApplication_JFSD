<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
         .container {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            margin:0;
            padding:0;
        }

        .container video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .content {
            z-index: 1; /* Ensure content is above the video */
        }

        .content h1 {
            font-size: 50px;
            color: orange;
            margin-bottom: 50px;
        }
        .content h2 {
            font-size: 35px;
            color:#fff;
            margin-bottom: 50px;
            text-align:right;
        }

        .content a {
            font-size: 23px;
            color: #fff;
            text-decoration: none;
            border: 2px solid #fff;
            padding: 15px 25px;
            border-radius: 50px;
            transition: 0.3s;
        }

        .content a:hover {
            background-color: #fff;
            color: #000;
        }
    </style>
</head>
<body>

 <div class="container">
        <video autoplay loop muted playsinline>
            <source src="videos/vi1.mp4" type="video/mp4">
        </video>
        <div class="content">
            <h1>WELCOME TO </h1>
            <h1>Smart City Application</h1>
         <a href="/home" class="link">Explore</a>
            <h2>Web site done by Durga and group</h2>
        </div>
    </div>

</body>
</html>