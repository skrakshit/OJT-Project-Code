<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container-scroller">
        <jsp:include page="header.jsp" />
        <div class="container-fluid page-body-wrapper">
            <jsp:include page="sidebar.jsp" />
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="page-header">
                        <h3 class="page-title"> Add User </h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Add User</li>
                            </ol>
                        </nav>
                    </div>
                    
                    <%-- Backend logic for adding a user --%>
                    <%
                        String message = "";
                        if (request.getParameter("submit") != null) {
                            String uname = request.getParameter("name");
                            String uemail = request.getParameter("email");
                            String upwd = request.getParameter("pass");
                            String umobile = request.getParameter("contact");

                            try {
                                // Database connection parameters
                                String dbURL = "jdbc:mysql://localhost:3306/wildlifeconservationdb?useSSL=false";
                                String dbUser = "root";
                                String dbPassword = "Nsti123";
                                
                                // Load and register the driver
                                Class.forName("com.mysql.cj.jdbc.Driver");

                                // Establish a connection
                                Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                                // Insert query for user data
                                String query = "INSERT INTO user (uname, upwd, uemail, umobile) VALUES (?, ?, ?, ?)";
                                PreparedStatement ps = conn.prepareStatement(query);
                                ps.setString(1, uname);
                                ps.setString(2, upwd);
                                ps.setString(3, uemail);
                                ps.setString(4, umobile);

                                // Execute update and check if insertion was successful
                                int result = ps.executeUpdate();
                                if (result > 0) {
                                    message = "User added successfully!";
                                } else {
                                    message = "Error adding user.";
                                }

                                // Close connection
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                                message = "Database error: " + e.getMessage();
                            }
                        }
                    %>

                    <div class="row">
                        <div class="col-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title text-center">Add User</h4>
                                    
                                    <%-- Display success or error message --%>
                                    <% if (!message.isEmpty()) { %>
                                        <div class="alert <%= message.contains("successfully") ? "alert-success" : "alert-danger" %>">
                                            <%= message %>
                                        </div>
                                    <% } %>

                                    <form method="post" class="forms-sample">
                                        <div class="form-group">
                                            <label for="uname">User Name</label>
                                            <input type="text" name="name" class="form-control" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="uemail">Email</label>
                                            <input type="email" name="email" class="form-control" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="upwd">Password</label>
                                            <input type="password" name="pass" class="form-control" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label for="umobile">Mobile Number</label>
                                            <input type="text" name="contact" class="form-control" required="true" >
                                        </div>
                                        <button type="submit" class="btn btn-primary mr-2" name="submit">Add User</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer.jsp" />
            </div>
        </div>
    </div>
</body>
</html>
