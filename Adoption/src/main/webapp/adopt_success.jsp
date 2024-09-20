<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You!</title>
 <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
<style>
    body {
        font-family: Arial, sans-serif;
        background: url("img/Thanks.png") no-repeat center center fixed;
        background-size: cover; /* Cover the entire viewport while maintaining aspect ratio */
        margin: 0;
        padding: 0;
        overflow: hidden;
        position: relative;
        height: 100vh; /* Full viewport height */
    }

    .balloon {
        position: absolute;
        width: 60px;
        height: 80px;
        border-radius: 50% 50% 40% 40%;
        background-color: #ff6f61;
        animation: balloonBurst 3s ease-out forwards;
        opacity: 0;
    }
    .balloon:nth-child(1) {
        background-color: #ff6f61;
        width: 50px;
        height: 70px;
        left: 10%;
        animation-delay: 0s;
    }
    .balloon:nth-child(2) {
        background-color: #f7c6c7;
        width: 70px;
        height: 90px;
        left: 30%;
        animation-delay: 0.5s;
    }
    .balloon:nth-child(3) {
        background-color: #6a1b9a;
        width: 60px;
        height: 80px;
        left: 50%;
        animation-delay: 1s;
    }
    .balloon:nth-child(4) {
        background-color: #43a047;
        width: 80px;
        height: 100px;
        left: 70%;
        animation-delay: 1.5s;
    }
    .balloon:nth-child(5) {
        background-color: #039be5;
        width: 90px;
        height: 110px;
        left: 90%;
        animation-delay: 2s;
    }
    @keyframes balloonBurst {
        0% {
            transform: scale(0);
            top: 0;
            opacity: 1;
        }
        50% {
            transform: scale(1.2);
            top: -50%;
            opacity: 1;
        }
        100% {
            transform: scale(1);
            top: 100vh;
            opacity: 0;
        }
    }
    .confetti {
        position: absolute;
        width: 10px;
        height: 10px;
        background-color: #ffeb3b;
        border-radius: 50%;
        animation: confettiFall 4s linear infinite;
    }
    .confetti:nth-child(6) {
        background-color: #ffeb3b;
        left: 10%;
        animation-delay: 0s;
    }
    .confetti:nth-child(7) {
        background-color: #e91e63;
        left: 25%;
        animation-delay: 1s;
    }
    .confetti:nth-child(8) {
        background-color: #00bcd4;
        left: 40%;
        animation-delay: 2s;
    }
    .confetti:nth-child(9) {
        background-color: #4caf50;
        left: 55%;
        animation-delay: 3s;
    }
    .confetti:nth-child(10) {
        background-color: #ff5722;
        left: 70%;
        animation-delay: 4s;
    }
    @keyframes confettiFall {
        0% {
            transform: translateY(-100%);
            opacity: 1;
        }
        100% {
            transform: translateY(100vh);
            opacity: 0;
        }
    }
    
    
   
.message, h2, p {
    text-align: center;
    color: white;
    
    margin: 10px 0; /* Space between elements */
    border-radius: 10px; /* Rounded corners */
    font-size:35px;
   
 
}
.message, p{
 font-size:25px;



}
</style>
</head>
<body>
<!-- Topbar Start -->
<div class="container-fluid bg-light p-0 wow fadeIn" data-wow-delay="0.1s">
    <div class="row gx-0 d-none d-lg-flex align-items-center">
        <!-- Left side: Google Translate -->
        <div class="col-lg-7 px-5 text-start">
            <div class="h-100 d-inline-flex align-items-center py-1">
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
            <div class="h-100 d-inline-flex align-items-center py-3 justify-content-end">
          
            </div>
            
            
            
            <div class="h-100 d-inline-flex align-items-center">
                <a class="btn btn-sm-square bg-white text-primary me-1" href="https://www.facebook.com/profile.php?id=61564915165338"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-twitter"></i></a>
                <a class="btn btn-sm-square bg-white text-primary me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-sm-square bg-white text-primary" href=""><i class="fab fa-instagram"></i></a>
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

 
  <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-4 px-lg-5 wow fadeIn"
    data-wow-delay="0.1s">


      <img class="img-fluid me-3" src="img/icon/icon-10.png" alt="Icon" />
      
      
      <h1 class="m-0 text-primary">WildHaven</h1>
      
  
   

    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
    </button>
     

    <div class="collapse navbar-collapse py-4 py-lg-0" id="navbarCollapse">
      <div class="navbar-nav ms-auto">
        
        <div class="nav-item nav-link">
          
      
        </div>
      
  
  
  
  

        <a href="/IBM_PROJECTS_OJT2024/index.jsp" class="nav-item nav-link active">Home</a>
        <a href="/IBM_PROJECTS_OJT2024/about.jsp" class="nav-item nav-link">About</a>
  
        <div class="nav-item dropdown">
          <a href="/IBM_PROJECTS_OJT2024/service.html" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Services</a>
          <div class="dropdown-menu rounded-0 rounded-bottom m-0">
            <a href="/IBM_PROJECTS_OJT2024/CrudOperation" class="dropdown-item">Species Management</a>
            <a href="#" class="dropdown-item">Conservation Areas</a>
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
      
      <a href="registration.jsp" class="btn btn-primary">Join<i class="fa fa-arrow-right ms-3"></i></a>
        
    </div>
 
  </nav>
  <!-- Navbar End -->

    <div class="message">
        <h2>Thank you  ${param.fullName}, for adopting a species</h2>
        <p>We will get in touch with you soon.</p>
    </div>

    <!-- Balloons -->
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    
    <!-- Confetti -->
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
      <!-- Template Javascript -->
  <script src="js1/main.js"></script>
  <script>
  window.watsonAssistantChatOptions = {
    integrationID: "40f6535b-f4fd-4da5-9334-91599b86c0b0", // The ID of this integration.
    region: "au-syd", // The region your integration is hosted in.
    serviceInstanceID: "eab37542-ac5e-4718-8d4f-787f12a29357", // The ID of your service instance.
    onLoad: async (instance) => { await instance.render(); }
  };
  setTimeout(function(){
    const t=document.createElement('script');
    t.src="https://web-chat.global.assistant.watson.appdomain.cloud/versions/" + (window.watsonAssistantChatOptions.clientVersion || 'latest') + "/WatsonAssistantChatEntry.js";
    document.head.appendChild(t);
  });
</script>
</body>
</html>
