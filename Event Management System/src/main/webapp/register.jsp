<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            max-width: 900px;
            width: 100%;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        .welcome-box {
            flex: 1;
            background-color: #4CAF50;
            color: white;
            padding: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .welcome-box img {
            max-width: 100%;
            border-radius: 10px;
        }
        .welcome-box h1 {
            margin-top: 20px;
        }
        .form-box {
            flex: 1;
            padding: 30px;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        form {
            margin: 0 auto;
            text-align: left;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
        }
        .login-link a {
            color: #4CAF50;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Left Welcome Box -->
        <div class="welcome-box">
            <img src="images/event1.jpg" alt="Welcome">
            <h1>Welcome to Event Management</h1>
            <p>Your one-stop solution for managing and tracking events!</p>
        </div>

        <!-- Right Registration Form -->
        <div class="form-box">
            <h2>Register</h2>
            <form method="post" action="register">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required>
                
                <button type="submit">Register</button>
            </form>
            <p class="login-link"><a href="login.jsp">Already have an account? Login here</a></p>
        </div>
    </div>
</body>
</html>
