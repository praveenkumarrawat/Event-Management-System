<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Navigation Bar Styles */
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
        .welcome-section {
            text-align: center;
            padding: 50px 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .welcome-section h1 {
            color: #4CAF50;
        }

        /* Image Boxes */
        .image-boxes {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
        }
        .image-box {
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 10px;
            border-radius: 10px;
            text-align: center;
        }
        .image-box img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
        }
        .image-box h3 {
            margin-top: 10px;
            color: #333;
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
        <!-- Logo on the left -->
        <img src="images/logo1.png" alt="Event Management Logo">
        
        <!-- Navigation Links -->
        <div>
        	<a href="home.jsp">Home</a>
            <a href="upcomingEvents">Upcoming Events</a>
            <a href="pastEvents">Past Events</a>
            <a href="createEvent.jsp">Create Event</a>
            <a href="deleteEvent.jsp">Delete Event</a>
            <a href="logout">Logout</a>
        </div>
    </div>

    <!-- Welcome Section -->
    <div class="welcome-section">
        <h1>Welcome to the Event Management System</h1>
        <p>Your one-stop solution for managing and tracking events.</p>
    </div>

    <!-- Image Boxes -->
    <div class="image-boxes">
        <!-- Image 1 -->
        <div class="image-box">
            <img src="images/hackathon.jpg" alt="Event 1">
            <h3>SISTech-Hackathone,Bhopal</h3>
        </div>
        <!-- Image 2 -->
        <div class="image-box">
            <img src="images/interview.jpg" alt="Event 2">
            <h3>Interview Process</h3>
        </div>
        <!-- Image 3 -->
        <div class="image-box">
            <img src="images/event3.jpg" alt="Event 3">
            <h3>Technical Quiz</h3>
        </div>
        <!-- Image 4 -->
        <div class="image-box">
            <img src="images/prize.jpeg" alt="Event 4">
            <h3>Innovation Week</h3>
        </div>
        <!-- Image 5 -->
        <div class="image-box">
            <img src="images/seminar.jpg" alt="Event 5">
            <h3>Web-Dev Workshop</h3>
        </div>
        <!-- Image 6 -->
        <div class="image-box">
            <img src="images/hoi.jpeg" alt="Event 6">
            <h3>Dr. Vikas Thada - HOI</h3>
        </div>
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

</body>
</html>
