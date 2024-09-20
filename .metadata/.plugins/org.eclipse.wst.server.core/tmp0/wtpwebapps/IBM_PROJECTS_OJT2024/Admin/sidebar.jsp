<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
                <div class="profile-image">
                    <img class="img-xs rounded-circle" src="images/faces/face8.jpg" alt="profile image">
                    <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
                    <%
                        // Retrieve session attributes for admin details
                        String adminName = (String) session.getAttribute("adminName");
                        String adminEmail = (String) session.getAttribute("adminEmail");

                        // Display admin name and email if available
                        if (adminName != null && adminEmail != null) {
                    %>
                            <p class="profile-name text-capitalize"><%= adminName %></p>
                            <p class="designation"><%= adminEmail %></p>
                    <%
                        } else {
                    %>
                            <p class="profile-name">Admin Name not found</p>
                            <p class="designation">Email not found</p>
                    <%
                        }
                    %>
                </div>
            </a>
        </li>
        <li class="nav-item nav-category">
            <span class="nav-link">Dashboard</span>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">
                <span class="menu-title">Dashboard</span>
                <i class="icon-screen-desktop menu-icon"></i>
            </a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="/IBM_PROJECTS_OJT2024">
                <span class="menu-title">Home</span>
                <i class='bx bx-home-alt-2' ></i>
            </a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic1">
                <span class="menu-title">Users</span>
                <i class="icon-people menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic1">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="add-user.jsp">Add User</a></li>
                    <li class="nav-item"> <a class="nav-link" href="user-manage.jsp">Manage User</a></li>                   
                    
                  
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic1">
                <span class="menu-title">Admins</span>
                <i class="icon-people menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic2">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="add-admin.jsp">Add Admin</a></li>
                     <li class="nav-item"> <a class="nav-link" href="admin-manage.jsp">Manage Admin</a></li>
                    
                    
                    
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic1">
                <span class="menu-title">Volunteers</span>
                <i class="icon-people menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic3">
                <ul class="nav flex-column sub-menu">
                    <!-- <li class="nav-item"> <a class="nav-link" href="add-admin.jsp">Add Admin</a></li> -->
                     <li class="nav-item"> <a class="nav-link" href="volunteer-manage.jsp">Manage Volunteer</a></li>
                    
                    
                    
                </ul>
            </div>
        </li>
        
        
 
    </ul>
</nav>
