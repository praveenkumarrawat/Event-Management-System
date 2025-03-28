<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Modal (Popup) Styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4); /* Black with opacity */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #888;
            width: 300px; /* Square Box */
            height: 300px; /* Square Box */
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .message {
            font-size: 24px;
            color: red;
            margin-bottom: 20px;
        }

        .button {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            border: none;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .button:hover {
            background-color: #e53935;
        }
    </style>
</head>
<body>
    <!-- The Modal -->
    <div id="errorModal" class="modal">
        <div class="modal-content">
            <div class="message">
                <p>Invalid Event ID.<br>Please check the ID and try again!</p>
            </div>
            <a href="deleteEvent.jsp" class="button">Try Again</a>
        </div>
    </div>

    <!-- JavaScript to show the modal -->
    <script>
        // Show the error modal when the page is loaded
        window.onload = function() {
            document.getElementById("errorModal").style.display = "flex";
        };
    </script>
</body>
</html>
