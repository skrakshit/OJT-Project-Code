<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="userheader.jsp" /> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>WildHaven |Wildlife Conservation & Protection System</title>
 
    <style>
    
   /* Ensure the carousel and its items take up the full height of the column */
.carousel, .carousel-inner, .carousel-item {
    height: 100%;
}

.carousel-item img {
  
    width: 120%;
    height: 100%;
     margin-left: -5%; /* Center the image horizontally */
}

/* Style carousel controls */
.carousel-control-prev-icon,
.carousel-control-next-icon {
    background-color: rgba(0, 0, 0, 0.5); /* Dark background for visibility */
}

/* Style carousel indicators */
.carousel-indicators button {
    background-color: #007bff; /* Primary color for indicators */
}

/* Add some spacing between carousel items */
.carousel-item {
    margin-bottom: 15px;
}
   


/* Container and Section Styling */
.container-xxl {
    padding: 5rem 0;
}

/* Row Styling */
.row.g-4 {
    justify-content: center; /* Center all team items in the row */
}

/* Team Item Container */
.team-item {
    text-align: center;
    padding: 20px;
    background: #f8f9fa;
    border-radius: 15px;
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin: 0 auto; /* Center the team item */
}

.team-img-container {
    width: 200px;
    height: 200px;
    margin: 0 auto; /* Center the image */
    overflow: hidden;
    border-radius: 50%;
    border: 5px solid #fff; /* Optional: Add a b/* Team Item Container */
    }
.team-item {
	text-align: center;
    padding: 20px;
    background: #f8f9fa;
    border-radius: 15px;
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin: 0 auto; /* Center the team item */
}

.team-img-container {
    width: 200px;
    height: 200px;
    margin: 0 auto; /* Center the image */
    overflow: hidden;
    border-radius: 50%;
    border: 5px solid #fff; /* Optional: Add a border around the circle */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Add a subtle shadow for depth */
}
.team-img-container:hover {
    transform: scale(1.1); /* Slight zoom on hover */
}

.team-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 50%;order around the circle */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Add a subtle shadow for depth */
}

.team-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 50%;

/* Hover Effects */
.team-item:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.team-img-container:hover .team-img {
    transform: scale(1.1);
}

/* Team Text Styling */
.team-text h4 {
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 10px;
}
/* Base button styling */
.team-social .btn {
    width: 40px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    color: #fff; /* White color for icons */
    font-size: 18px; /* Adjust the font size for icons */
    transition: background-color 0.3s ease;
    border: none; /* Remove border if any */
    display: inline-flex; /* Align items inside the button */
    justify-content: center;
    align-items: center;
}

/* Facebook button */
.btn-facebook {
    background-color: #3b5998; /* Facebook blue */
}

.btn-facebook:hover {
    background-color: #2d4373; /* Darker Facebook blue on hover */
}

/* Twitter button */
.btn-twitter {
    background-color: #1da1f2; /* Twitter blue */
}

.btn-twitter:hover {
    background-color: #0d95e8; /* Darker Twitter blue on hover */
}

/* LinkedIn button */
.btn-linkedin {
    background-color: #0077b5; /* LinkedIn blue */
}

.btn-linkedin:hover {
    background-color: #005582; /* Darker LinkedIn blue on hover */
}

/* Ensure the buttons are centered within the team-social container */
.team-social {
    text-align: center;
}





/* Responsive Design */
@media (max-width: 768px) {
    .team-item {
        margin-bottom: 30px;
    }
}

@media (max-width: 576px) {
    .team-img-container {
        width: 120px;
        height: 120px;
    }

    .team-text h4 {
        font-size: 16px;
    }
}


/* Species Section */
.species-item {
    text-align: center;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    transition: all 0.3s ease-in-out;
}

.species-item:hover {
    border-color: #28a745; /* Green border on hover */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.species-item img {
    width: 100%;
    height: auto;
    border-radius: 10px;
    transition: transform 0.3s ease;
}

.species-item:hover img {
    transform: scale(1.05);
}

.species-text {
    padding: 20px;
}

.species-text h4 {
    font-size: 20px;
    color: #333;
    margin-bottom: 10px;
}

.species-text p {
    font-size: 14px;
    color: #555;
}



   
   
   
   
   
   
   
   
   /* Ensure the image covers the full width and is responsive */
img.img-fluid {
    max-width: 100%;
    height: auto;
}

/* Optionally, you can add a class for full-width image styling */
.full-width-img {
    width: 100%;
    height: auto;
}
   
    
    
    
    </style>
  </head>

  <body>
   
    



    <!-- Page Header Start -->
    <div
      class="container-fluid header-bg py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">About Us</h1>
        <nav aria-label="breadcrumb animated slideInDown">
        
        </nav>
      </div>
    </div>
    <!-- Page Header End -->
<!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                
                <h1 class="display-5 mb-4">
                    Safeguarding Wildlife with
                    <span class="text-primary">WildHaven</span>
                </h1>
                <p class="mb-4" style=text-align:justify;>
                    WildGuard is dedicated to the conservation and protection of wildlife through innovative technology, comprehensive research, and active community involvement. Our mission is to ensure the survival of endangered species and the preservation of their natural habitats.
                </p>
                <p class="mb-4" style=text-align:justify;>
                    We leverage modern technology to monitor and protect wildlife populations, analyze data to inform conservation strategies, and engage with local communities to foster sustainable practices. Join us in our mission to create a safer world for wildlife.
                </p>
                <div class="accordion" id="wildlifeAccordion">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <i class="fas fa-plus-circle text-primary me-3"></i>Monitoring Endangered Species
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#wildlifeAccordion">
                            <div class="accordion-body">
                                Utilizing advanced tracking systems and data analytics to monitor the health and movement of endangered species.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <i class="fas fa-plus-circle text-primary me-3"></i>Conservation Initiatives
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#wildlifeAccordion">
                            <div class="accordion-body">
                                Implementing targeted conservation projects to restore habitats and protect wildlife from threats such as poaching and climate change.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <i class="fas fa-plus-circle text-primary me-3"></i>Scientific Research
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#wildlifeAccordion">
                            <div class="accordion-body">
                                Conducting cutting-edge research to better understand wildlife behavior, health, and ecology, informing our conservation strategies.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingFour">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                <i class="fas fa-plus-circle text-primary me-3"></i>Community Engagement
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#wildlifeAccordion">
                            <div class="accordion-body">
                                Educating and involving local communities in conservation efforts to ensure sustainable and effective protection measures.
                            </div>
                        </div>
                    </div>
                </div>
                <a class="btn btn-primary py-3 px-5 mt-3" href="https://www.wcs.org/">Learn More</a>
            </div>
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                <div id="carouselExampleIndicators" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="img/endangerspecies.jpg" class="d-block w-100" alt="Monitoring Endangered Species">
                        </div>
                        <div class="carousel-item">
                            <img src="img/trust.jpg" class="d-block w-100" alt="Conservation Initiatives">
                        </div>
                        <div class="carousel-item">
                            <img src="img/scientific.jpg" class="d-block w-100" alt="Scientific Research">
                        </div>
                        <div class="carousel-item">
                            <img src="img/community.jpg" class="d-block w-100" alt="Community Engagement">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->
 
<!-- Team start -->
<!-- Team Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
            <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Our Team</p>
            <h1 class="display-5 mb-5">Meet Our <b class=text-primary>Team</b></h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item">
                    <div class="team-img-container">
                        <img class="img-fluid rounded-circle team-img" src="img/Jitesh.png" alt="Jitesh Mohapatra">
                    </div>
                    <div class="team-text">
                        <h4 class="mb-0">Jitesh Mohapatra</h4>
                      <div class="team-social d-flex justify-content-center mt-3">
    <a class="btn btn-square rounded-circle mx-1 btn-facebook" href="https://www.facebook.com/jitesh.mohapatra.77"><i class="fab fa-facebook-f"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-twitter" href="https://x.com/MohapatraJitesh"><i class="fab fa-twitter"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-linkedin" href="https://www.linkedin.com/public-profile/settings?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_self_edit_contact-info%3Bi3UOjx1zRay5EHfG0k2KOA%3D%3D"><i class="fab fa-linkedin-in"></i></a>
</div>
                      


                 </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item">
                    <div class="team-img-container">
                        <img class="img-fluid rounded-circle team-img" src="img/kumar_rakshit.png" alt="Sayan Kumar Rakshit">
                    </div>
                    <div class="team-text">
                        <h4 class="mb-0">Sayan Kumar Rakshit</h4>
                    <div class="team-social d-flex justify-content-center mt-3">
    <a class="btn btn-square rounded-circle mx-1 btn-facebook" href="https://www.facebook.com/er.sayanrakshit"><i class="fab fa-facebook-f"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-twitter" href="https://x.com/Binary_Sayan"><i class="fab fa-twitter"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-linkedin" href="https://www.linkedin.com/in/sayanrakshit2004/"><i class="fab fa-linkedin-in"></i></a>
</div>
                    
                    
                    
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item">
                    <div class="team-img-container">
                        <img class="img-fluid rounded-circle team-img" src="img/Akash.png" alt="Santosh Baral">
                    </div>
                    <div class="team-text">
                        <h4 class="mb-0">Santosh Baral</h4>
                        <div class="team-social d-flex justify-content-center mt-3">
    <a class="btn btn-square rounded-circle mx-1 btn-facebook" href="https://www.facebook.com/kingsman.santosh.1"><i class="fab fa-facebook-f"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-twitter" href="#"><i class="fab fa-twitter"></i></a>
    <a class="btn btn-square rounded-circle mx-1 btn-linkedin" href="https://www.linkedin.com/in/santoshkubaral/"><i class="fab fa-linkedin-in"></i></a>
</div>
                        
                    </div>
                </div>
            </div>
          
        </div>
    </div>
</div>
<!-- Team End -->

<!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
            <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">About Us</p>
            <h1 class="display-5 mb-5">Dedicated to <b class="text-primary">Wildlife Conservation</b></h1>
        </div>
        <div class="row g-4">
            <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                <img class="img-fluid rounded w-100" src="img/7.png" alt="Wildlife Conservation">
            </div>
        </div>
    </div>
</div>
<!-- About End -->

<!-- Contact Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
            <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Contact Us</p>
            <h1 class="display-5 mb-5"><b class="text-primary">Get in</b> Touch</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                <form>
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="name" class="form-label">Your Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Your Name" required>
                        </div>
                        <div class="col-12">
                            <label for="email" class="form-label">Your Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Your Email" required>
                        </div>
                        <div class="col-12">
                            <label for="subject" class="form-label">Subject</label>
                            <input type="text" class="form-control" id="subject" placeholder="Subject" required>
                        </div>
                        <div class="col-12">
                            <label for="message" class="form-label">Message</label>
                            <textarea class="form-control" id="message" placeholder="Message" rows="5" required></textarea>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary w-100 py-3">Send Message</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay="0.3s">
                <div class="map-frame">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3741.739216352266!2d85.84664707469565!3d20.311058712042794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a190b237f405e7b%3A0x776ac97fec34db8b!2sNSTI%20BHUBANESWAR%20Macheswar%20Campus!5e0!3m2!1sen!2sin!4v1723108325377!5m2!1sen!2sin" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

  

  <!-- Testimonial Start -->
<div class="container-xxl py-5">
  <div class="container">
    <h1 class="display-5 text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">
      Animal Stories
    </h1>
    <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
      <div class="testimonial-item text-center">
        <img class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4" src="img/testimonial-1.png"
          style="width: 100px; height: 100px" />
        <div class="testimonial-text rounded text-center p-4">
          <p>
            "The Indian Elephant, a majestic creature, was saved from poaching thanks to our conservation efforts. 
            Now, they roam freely in protected reserves, helping to maintain the ecosystem balance."
          </p>
          <h5 class="mb-1">Richard Caines
</h5>
          <span class="fst-italic">Director, Environmental and Social Safeguards Appointment</span>
        </div>
      </div>
      <div class="testimonial-item text-center">
        <img class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4" src="img/testimonial-2.jpg"
          style="width: 100px; height: 100px" />
        <div class="testimonial-text rounded text-center p-4">
          <p>
            "The Golden Langur, once on the brink of extinction, now thrives in our protected habitats. 
            This success story showcases the importance of dedicated conservation efforts and community support."
          </p>
          <h5 class="mb-1">Nikhil Advani</h5>
          <span class="fst-italic">Senior Director, Wildlife and Climate Resilience</span>
        </div>
      </div>
      <div class="testimonial-item text-center">
        <img class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4" src="img/testimonial-3.jpg"
          style="width: 100px; height: 100px" />
        <div class="testimonial-text rounded text-center p-4">
          <p>
            "The Indian One Horned Rhinoceros has made a remarkable comeback from the verge of extinction, 
            thanks to our relentless anti-poaching campaigns and habitat restoration projects."
          </p>
          <h5 class="mb-1">Marty Spitzer
</h5>
          <span class="fst-italic">Senior Director, Climate and Renewable Energy</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Testimonial End -->

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
