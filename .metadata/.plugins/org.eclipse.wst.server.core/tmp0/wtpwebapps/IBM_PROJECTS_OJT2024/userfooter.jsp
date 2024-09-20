<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wildHaven</title>
</head>
<body>
	  <!-- Footer Start -->
  <div class="container-fluid footer bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
      <div class="row g-5">
        <div class="col-lg-3 col-md-6">
          <h5 class="text-light mb-4">Address</h5>
          <p class="mb-2">
            <i class="fa fa-map-marker-alt me-3"></i>Bhubaneswar, Odisha, India
          </p>
          <p class="mb-2">
            <i class="fa fa-phone-alt me-3"></i>+012 345 67890
          </p>
          <p class="mb-2">
            <i class="fa fa-envelope me-3"></i>team.wildhaven@gmail.com
          </p>
        <div class="d-flex pt-2">
    <a class="btn btn-outline-light btn-social" href="https://x.com/wildhaven_bbsr" target="_blank"><i class="fab fa-twitter"></i></a>
    <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/profile.php?id=61566268673655&mibextid=ZbWKwL" target="_blank"><i class="fab fa-facebook-f"></i></a>
    <a class="btn btn-outline-light btn-social" href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a> <!-- Replace with the correct YouTube URL -->
    <a class="btn btn-outline-light btn-social" href="https://www.linkedin.com/in/wild-haven/" target="_blank"><i class="fab fa-linkedin-in"></i></a>
</div>

        </div>
        <div class="col-lg-3 col-md-6">
          <h5 class="text-light mb-4">Quick Links</h5>
          <a class="btn btn-link" href="about.jsp">About Us</a>
       
          <a class="btn btn-link" href="conservation.jsp">Our Services</a>
          <a class="btn btn-link" href="#">Terms & Condition</a>
         
        </div>
        <div class="col-lg-3 col-md-6">
          <h5 class="text-light mb-4">Popular Links</h5>
          <a class="btn btn-link" href="https://bigcatsindia.com/">Bigcats India</a>
          <a class="btn btn-link" href="https://www.tigersafariindia.com/">Tiger Safari</a>
          <a class="btn btn-link" href="https://www.similipal.org/">Similipal Reserve</a>
       
        </div>
        <div class="col-lg-3 col-md-6">
          <h5 class="text-light mb-4">Welcome to the WildHaven Newsletter</h5>
           <p>Join our newsletter to stay updated on our latest wildlife conservation efforts and success stories.</p>
          <div class="position-relative mx-auto" style="max-width: 400px">
            <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email" />
            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">
              SignUp
            </button>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="copyright">
        <div class="row">
          <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
            &copy; <a class="border-bottom" href="#">WildHaven</a>, All
            Right Reserved.
          </div>
          <div class="col-md-6 text-center text-md-end" style="display: none !important;">
            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
            Designed By
            <a class="border-bottom" href="#"></a>
            <br />Distributed By:
           
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer End -->

  <!-- Back to Top -->
  <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>

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