<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<jsp:include page="userheader.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join As Volunteer</title>
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
        line-height: 1.6;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .text-center {
        text-align: center;
    }

    .title {
        font-size: 48px;
        margin-bottom: 20px;
    }

    .content {
        padding: 40px 0;
    }

    .form-group {
        margin-bottom: 20px;
         
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color:#e0e0e0;
    }

    .checkbox-group label {
        display: block;
        margin-bottom: 5px;s
    }

    .submit-btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .submit-btn:hover {
        background-color: #45a049;
    }
    
</style>
  </head>
<body>
	<!-- Sidebar with Content Section -->
<div class="with-sidebar-wrapper">
    <section id="content-section-1">
        <div class="parallax-wrapper" style="background-image: url('https://www.wti.org.in/wp-content/uploads/2021/10/VOLUNTEER_Header-image.jpg'); padding-top: 280px; padding-bottom: 160px;">
            <style>
                @media only screen and (max-width: 767px) {
                    .parallax-wrapper {
                        background-image: url('https://www.wti.org.in/wp-content/uploads/2021/10/VOLUNTEER_Header-Mobile.jpg') !important;
                    }
                }
            </style>
            <div class="container text-center">
                <h1 class="title" style="color: #fff;">VOLUNTEER</h1>
            </div>
        </div>
    </section>

    <section id="content-section-2">
        <div class="container">
            <div class="content">
                <p>If you wish to donate your time and skills to the cause of wildlife conservation, click here. We will match your skills with our needs and contact you if there is something you can contribute to.</p>
                <form action="VolunteerServlet" method="post" class="volunteer-form">
                    <div class="form-group">
                        <label for="your-name">Name*</label>
                        <input type="text" id="your-name" name="your-name" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address*</label>
                        <input type="text" id="address" name="address" required>
                    </div>
                    <div class="form-group">
                        <label for="phone-number">Phone Number*</label>
                        <input type="text" id="phone-number" name="phone-number" required>
                    </div>
                    <div class="form-group">
                        <label for="your-email">Your Email ID*</label>
                        <input type="email" id="your-email" name="your-email" required>
                    </div>
                    <div class="form-group">
                        <label for="age">Age (18 and older)*</label>
                        <input type="text" id="age" name="age" required>
                    </div>
                    <div class="form-group">
                        <label>Skill Set*</label>
                        <div class="checkbox-group">
                            <label><input type="checkbox" name="skill-set[]" value="Veterinary"> Veterinary</label>
                            <label><input type="checkbox" name="skill-set[]" value="Sociology"> Sociology</label>
                            <label><input type="checkbox" name="skill-set[]" value="Ecology"> Ecology</label>
                            <!-- Add more skill options as needed -->
                            <label><input type="checkbox" name="skill-set[]" value="Any other - specify"> Any other - specify</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="experience">Years of Experience in Relevant Skill*</label>
                        <input type="text" id="experience" name="experience" required>
                    </div>
                    <div class="form-group">
                        <label for="time">How Many Hours per Week Are You Willing to Commit?*</label>
                        <input type="text" id="time" name="time" required>
                    </div>
                    <button type="submit" class="submit-btn">Submit</button>
                </form>
            </div>
        </div>
    </section>
</div>
   	<jsp:include page="userfooter.jsp" />
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