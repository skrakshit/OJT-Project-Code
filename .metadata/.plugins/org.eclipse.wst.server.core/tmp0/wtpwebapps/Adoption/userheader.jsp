<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>WildHaven | Wildlife Conservation & Protection System</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="keywords" />
  <meta content="" name="description" />



<!-- Latest compiled and minified CSS -->


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->

  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon" />

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com"  />
  <link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Quicksand:wght@600;700&display=swap"
    rel="stylesheet" />

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

  <!-- Libraries Stylesheet -->
  <link href="lib/animate/animate.min.css" rel="stylesheet" />
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="css1/bootstrap.min.css" rel="stylesheet" />

  <!-- Template Stylesheet -->
  <link href="css1/style.css" rel="stylesheet" />





</head>

<body>
  <!-- Spinner Start -->
  <div id="spinner"
    class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
      <span class="sr-only"></span>
    </div>
  </div>
  <!-- Spinner End -->

<!-- Topbar Start -->
<div class="container-fluid bg-light p-0 wow fadeIn" data-wow-delay="0.1s">
    <div class="row gx-0 d-none d-lg-flex align-items-center">
        <!-- Left side: Google Translate -->
        <div class="col-lg-7 px-5 text-start">
            <div class="h-100 d-inline-flex align-items-center py-3">
                <div id="google_translate_element"></div>
                
                <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
                }
                </script>

                <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
            </div>
        </div>

        <!-- Right side: User Info and Social Media Links -->
        <div class="col-lg-5 px-5 text-end">
            
            
            
            
            <div class="h-100 d-inline-flex align-items-center">
                <a class="btn btn-sm-square bg-white text-primary me-1" href="https://www.facebook.com/profile.php?id=61566268673655&mibextid=ZbWKwL"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-sm-square bg-white text-primary me-1" href="https://x.com/wildhaven_bbsr"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-sm-square bg-white text-primary me-1" href="https://www.linkedin.com/in/wild-haven/"><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-sm-square bg-white text-primary" href="https://www.instagram.com/wildhaven_bbsr?igsh=c2RldjVpZ3U0eXFw"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</div>


 

<!-- Add the following script at the bottom of the page to initialize the tooltip -->
<script>
    // Initialize Bootstrap tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
 
   

  <!-- Navbar Start -->
  
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-4 px-lg-5 wow fadeIn"
    data-wow-delay="0.1s">
    <a href="index.html" class="navbar-brand p-0">
      <img class="img-fluid me-3" src="img/icon/icon-10.png" alt="Icon" />
      <h1 class="m-0 text-primary">WildHaven</h1>
    </a>
    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
    </button>
     

    <div class="collapse navbar-collapse py-4 py-lg-0" id="navbarCollapse">
      <div class="navbar-nav ms-auto">
        <form action="https://www.google.com/search" method="GET" class="hm-searchbox">
          <input type="search" id="search" name="q" placeholder="Search Google or type URL" />
          <button className="icon" type="submit"><i className="small material-icons">search</i></button>
        </form>
        <div class="nav-item nav-link">
          
      
        </div>
      

        <a href="/IBM_PROJECTS_OJT2024/index.jsp" class="nav-item nav-link active">Home</a>
        <a href="/IBM_PROJECTS_OJT2024/about.jsp" class="nav-item nav-link">About</a>
  
        <div class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Services</a>
          <div class="dropdown-menu rounded-0 rounded-bottom m-0">
            <a href="/CrudOperation" class="dropdown-item">Species Management</a>
            <a href="conservation.jsp" class="dropdown-item">Conservation Areas</a>
               <a href="/IBM_PROJECTS_OJT2024/report.jsp" class="dropdown-item">Wildlife Reports</a>
            <a href="/IBM_PROJECTS_OJT2024/volunteer.jsp" class="dropdown-item">Volunteer</a>

          </div>
        </div>


        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Media</a>
          
          <div class="dropdown-menu rounded-0 rounded-bottom m-0">
            <a href="/IBM_PROJECTS_OJT2024/Wildlife/index.html" class="dropdown-item">Blogs</a>
            <a href="/IBM_PROJECTS_OJT2024/Event/index.html" class="dropdown-item">Events</a>
          
            <a href="/IBM_PROJECTS_OJT2024/wildlife gallery/index.html" class="dropdown-item">Photo Gallery</a>
            <a href="/IBM_PROJECTS_OJT2024/Wildlife video/index.html" class="dropdown-item">Video Gallery</a>


          </div>
        </div>
        <!-- <a href="#" class="nav-item nav-link"><i class="fa fa-search ms-3" id="search-icon"></i></a> -->

          
           
      </div>
      <%
      String userName = (String) session.getAttribute("name");
      if (userName != null && !userName.isEmpty()) {
    %>
      <div class="nav-item dropdown username">
        <a href="#" class="nav-link dropdown-toggle " data-bs-toggle="dropdown">
         <span class="text-success"><%= userName %></span>
        </a>
        <div class="dropdown-menu rounded-0 rounded-bottom m-0">
         
          <a href="logout" class="dropdown-item">Logout</a>
        </div>
      </div>
    <%
      } else {
    %>
      <!-- Show the "Join" button if the user is not logged in -->
      <a href="registration.jsp" class="btn btn-primary ms-3">Join<i class="fa fa-arrow-right ms-3"></i></a>
    <%
      }
    %>
      
      
        
    </div>
 
  </nav>
  <!-- Navbar End -->
  

  </body>
  </html>