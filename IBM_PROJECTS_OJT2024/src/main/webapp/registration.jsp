<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up - WildGuard</title>

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">

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
            <div class="h-100 d-inline-flex align-items-center py-3 justify-content-end">
                
            </div>
            
            
            
            <div class="h-100 d-inline-flex align-items-center">
                <a class="btn btn-sm-square bg-white text-success me-1" href="https://www.facebook.com/profile.php?id=61564915165338"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-sm-square bg-white text-success me-1" href=""><i class="fab fa-twitter"></i></a>
                <a class="btn btn-sm-square bg-white text-success me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-sm-square bg-white text-success" href=""><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</div>


 


 
  <!-- Topbar End -->

<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top py-lg-0 px-4 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
    

  <a href="index.html" class="navbar-brand p-0">
    <img class="img-fluid me-3" src="img/icon/icon-10.png" alt="Icon" />
    <h1 class="m-0 text-success">WildHaven</h1>
  </a>

  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse py-4 py-lg-0" id="navbarCollapse">
    <form action="#" class="hm-searchbox d-flex ms-auto me-3" id="search-form">
      <input type="text" placeholder="Search Here..." id="search-input" class="form-control me-2">
      <button class="btn btn-light" type="button" id="voice-search-button">
   
      </button>
      <button class="btn btn-light" type="submit" id="search-button">
        <i class="fa fa-search"></i>
      </button>
    </form>

    <div class="navbar-nav ms-auto">
      <a href="index.jsp" class="nav-item nav-link active">Home</a>
      <a href="about.jsp" class="nav-item nav-link">About</a>

      <div class="nav-item dropdown">
        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Services</a>
        <div class="dropdown-menu rounded-0 rounded-bottom m-0">
          <a href="/CrudOperation" class="dropdown-item">Species Management</a>
          <a href="#" class="dropdown-item">Conservation Areas</a>
              <a href="report.jsp" class="dropdown-item">Wildlife Reports</a>
          <a href="volunteer.jsp" class="dropdown-item">Volunteer</a>
        </div>
      </div>

      <div class="nav-item dropdown">
        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Media</a>
        <div class="dropdown-menu rounded-0 rounded-bottom m-0">
          <a href="Wildlife/index.html" class="dropdown-item">Blogs</a>
          <a href="Event/index.html" class="dropdown-item">Events</a>
        
          <a href="wildlife gallery/index.html" class="dropdown-item">Photo Gallery</a>
          <a href="Wildlife video/index.html" class="dropdown-item">Video Gallery</a>
        </div>
      </div>

     
    </div>
     <a href="registration.jsp" class="btn btn-success">Join<i class="fa fa-arrow-right ms-3"></i></a>
  </div>
</nav>
<!-- Navbar End -->

<div class="main">
  <!-- Sign up form -->
  <section class="signup">
    <div class="container">
      <div class="signup-content">
        <div class="signup-form">
          <h2 class="form-title text-success">Sign up</h2>
          <form method="post" action="register" class="register-form" id="register-form">
            <div class="form-group">
              <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
              <input type="text" name="name" id="name" placeholder="Your Name" />
            </div>
            <div class="form-group">
              <label for="email"><i class="zmdi zmdi-email"></i></label>
              <input type="email" name="email" id="email" placeholder="Your Email" />
            </div>
            <div class="form-group">
              <label for="pass"><i class="zmdi zmdi-lock"></i></label>
              <input type="password" name="pass" id="pass" placeholder="Password" />
            </div>
            <div class="form-group">
              <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
              <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
            </div>
            <div class="form-group">
              <label for="contact"><i class="zmdi zmdi-phone"></i></label>
              <input type="text" name="contact" id="contact" placeholder="Contact no" />
            </div>
            <div class="form-group">
              <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
              <label for="agree-term" class="label-agree-term">
                <span><span></span></span>I agree to all statements in 
                <a href="#" class="term-service">Terms of service</a>
              </label>
            </div>
            <div class="form-group form-button">
              <input type="submit" name="signup" id="signup" class="form-submit" value="Register"  />
            </div>
          </form>
        </div>
        <div class="signup-video">
          <figure>
            <video width="650px" height="500px" autoplay muted loop>
              <source src="img/signup_video.mp4" type="video/mp4">
     
            </video>
          </figure>
          <a href="login.jsp" class="signup-image-link"><b style=font-family:verdana;>I am already a member</b></a>
        </div>
      </div>
    </div>
  </section>
</div>





<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status = document.getElementById("status").value;
if(status == "success"){
  swal("Congrats", "Account Created Successfully", "success");
}
</script>


	 
  
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
