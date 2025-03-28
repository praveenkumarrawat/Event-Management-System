<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Event Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Navigation Bar */
        .nav {
            background-color: #4CAF50;
            padding: 15px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav img {
            height: 10%;
            width: 10%;
            margin-left: 20px;
        }


        .nav a {
            padding: 12px 20px;
            margin: 10px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            font-size: 18px;
        }

        .nav a:hover {
            background-color: #45a049;
        }

        /* Welcome Section */
        h1 {
            color: #4CAF50;
            margin-top: 30px;
            text-align: center;
        }

        p {
            font-size: 18px;
            color: #555;
            text-align: center;
        }

        /* Slideshow Styles */
        .slideshow-container {
            position: relative;
            max-width: 800px;
            margin: auto;
            padding-top: 50px;
        }

        .slide {
            display: none;
            text-align: center;
        }

        .slide img {
            width: 100%;
            max-width: 800px;
            height: 450px;
            object-fit: cover;
            border-radius: 10px;
        }

        .slide-title {
            font-size: 18px;
            color: #333;
            margin-top: 10px;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: auto;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 0 3px 3px 0;
            user-select: none;
            z-index: 10;
        }

        .next {
            right: 10px;
            border-radius: 3px 0 0 3px;
        }

        .prev {
            left: 10px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* Button Styles */
        .button {
            padding: 15px 30px;
            margin: 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
        }

        .button:hover {
            background-color: #45a049;
        }

        /* Footer */
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .footer p {
            margin: 10px 0;
        }
        .social-media a {
            color: white;
            text-decoration: none;
            margin: 10px;
            font-size: 20px;
        }
        .social-media a:hover {
            color: #4CAF50;
        }

    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="nav">
        <img src="images/logo1.png" alt="Event Management Logo">
        <div>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>

    <!-- Welcome Section -->
    <h1>Welcome to the Event Management System</h1>
    <p>Your one-stop solution for managing and tracking events.</p>

    <!-- Slideshow -->
    <div class="slideshow-container">
        <!-- Slide 1 -->
        <div class="slide">
            <img src="images/event1.jpg" alt="Event 1">
            <p class="slide-title">Inauguration Event</p>
        </div>
        <!-- Slide 2 -->
        <div class="slide">
            <img src="images/event2.png" alt="Event 2">
            <p class="slide-title">Interview Process</p>
        </div>
        <!-- Slide 3 -->
        <div class="slide">
            <img src="images/event3.jpg" alt="Event 3">
            <p class="slide-title">Technical Quiz</p>
        </div>

        <!-- Navigation buttons -->
        <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
        <a class="next" onclick="changeSlide(1)">&#10095;</a>
    </div>

    

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Event Management System | All Rights Reserved</p>
        <div class="social-media">
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
            <a href="#">Instagram</a>
            <a href="#">LinkedIn</a>
        </div>
        <p>Contact us: support@eventmanagement.com</p>
    </div>

    <script>
        let currentSlide = 0;
        const slides = document.querySelectorAll(".slide");

        function showSlide(index) {
            slides.forEach((slide, i) => {
                slide.style.display = (i === index) ? "block" : "none";
            });
        }

        function changeSlide(step) {
            currentSlide = (currentSlide + step + slides.length) % slides.length;
            showSlide(currentSlide);
        }

        // Show the first slide initially
        showSlide(currentSlide);

        // Auto-change the slides every 3 seconds
        setInterval(() => {
            changeSlide(1);
        }, 3000);
    </script>

</body>
</html>
