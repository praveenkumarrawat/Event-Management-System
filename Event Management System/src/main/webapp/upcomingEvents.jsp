<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Upcoming Events</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            box-sizing: border-box;
        }

        /* Navigation Bar Styles */
        .nav {
            background: linear-gradient(135deg, #4CAF50, #45a049);
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .nav img {
            height: 10%;
            width: 10%;
            margin-left: 20px;
        }

        .nav a {
            color: white;
            padding: 12px 20px;
            margin: 0 15px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .nav a:hover {
            background-color: #388E3C;
            transform: scale(1.05);
        }

        /* Table Styles */
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        td {
            background-color: #fff;
            color: #333;
        }

        tr:hover {
            background-color: #f1f1f1;
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

        /* Main Content */
        main {
            padding: 20px;
        }

        h1 {
            color: #333;
            font-size: 28px;
            text-align: center;
            margin: 40px 0;
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
        <h1>Upcoming Events</h1>
        <table>
            <tr>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Event Date</th>
                <th>Description</th>
            </tr>
            <%
                // Retrieve the events from the request
                ResultSet events = (ResultSet) request.getAttribute("events");

                if (events != null) {
                    while (events.next()) {
            %>
                        <tr>
                            <td><%= events.getInt("id") %></td>
                            <td><%= events.getString("event_name") %></td>
                            <td><%= events.getDate("event_date") %></td>
                            <td><%= events.getString("description") %></td>
                        </tr>
            <%
                    }
                } else {
            %>
                    <tr><td colspan="4">No upcoming events found.</td></tr>
            <%
                }
            %>
        </table>
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
