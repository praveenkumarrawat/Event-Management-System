<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Event</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
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

        /* Form Styles */
        form {
            width: 40%;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-bottom: 30px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            margin-top: 20px;
        }

        .success {
            color: green;
            font-size: 18px;
        }

        .error {
            color: red;
            font-size: 18px;
        }

        /* Footer Styles */
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .footer p {
            margin: 10px 0;
            font-size: 14px;
        }

        .social-media a {
            color: white;
            text-decoration: none;
            margin: 10px;
            font-size: 20px;
            transition: color 0.3s ease;
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

    <!-- Main Content -->
    <main>
        <h1>Delete Event</h1>
        <form method="post" action="deleteEvent">
            <input type="number" name="id" placeholder="Enter Event ID" required>
            <button type="submit">Delete Event</button>
        </form>

        <!-- Display Success or Error Message -->
        <div class="message">
            <p class="<%= request.getAttribute("message") != null && request.getAttribute("message").toString().contains("Error") ? "error" : "success" %>">
                <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
            </p>
        </div>
    </main>

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
