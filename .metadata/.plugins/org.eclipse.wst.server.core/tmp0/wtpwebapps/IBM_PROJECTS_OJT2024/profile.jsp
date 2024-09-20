<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ page session="true" %>
<%
    // Checking if the user is logged in
    String username = (String) session.getAttribute("username");
    if (username == null) {
        // Redirect to login page if user is not logged in
        response.sendRedirect("login.jsp");
        return;
    }

    // Retrieve user details from session or database
    String email = (String) session.getAttribute("email");
    // Other user details can be retrieved similarly
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        /* Add your custom styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .profile-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .profile-header {
            text-align: center;
        }
        .profile-details {
            margin-top: 20px;
        }
        .profile-details h3 {
            margin: 0;
            padding: 10px 0;
        }
        .profile-details p {
            margin: 0;
            padding: 5px 0;
            font-size: 18px;
        }
        .logout-btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #ff4b5c;
            color: white;
            text-align: center;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-header">
            <h2>Welcome, <%= username %>!</h2>
        </div>
        <div class="profile-details">
            <h3>Profile Information</h3>
            <p><strong>Username:</strong> <%= username %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <!-- Add other user details here -->
        </div>
        <a href="logout.jsp" class="logout-btn">Logout</a>
    </div>
</body>
</html>
