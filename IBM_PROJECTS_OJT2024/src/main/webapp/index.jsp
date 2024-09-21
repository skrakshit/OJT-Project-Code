
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="userheader.jsp" /> 

  <!-- Header Start -->
  <div class="container-fluid  bg-dark p-0 mb-4">

    <div class="col-md-12 wow fadeIn" data-wow-delay="0.5s">
      <div class="owl-carousel header-carousel">
      
        <div class="owl-carousel-item">
          <img class="img-fluid carousel-image" src="img/welcome.png" alt="" />
        </div>
        <div class="owl-carousel-item" >
          <img class="img-fluid carousel-image" src="img/animal_page.png" alt="" />
        </div>
        <div class="owl-carousel-item">
          <img class="img-fluid carousel-image" src="img/protect.png" alt="" />
        </div>
        
        
       
      </div>
    </div>
  </div>
 
  <!-- Header End -->

<!-- About Start -->
<div class="container-xxl py-5">
  <div class="container">
    <div class="row g-5">
      <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
        <p><strong class="text-primary">Welcome to</strong> <span class="text-dark">WildHaven</span></p>
        <h1 class="display-5 mb-4">
          Why You Should Join
          <span class="text-primary">WildHaven</span>
        </h1>
        <p class="mb-4" style="text-align: justify;">
          WildHaven is dedicated to the protection and conservation of wildlife through innovative technology solutions. Our platform provides comprehensive information, resources, and tools to support wildlife conservation efforts globally.
        </p>
        <h5 class="mb-3">
          <i class="far fa-check-circle text-primary me-3"></i>Endangered Animals in India
        </h5>
        <p class="mb-3">
          Discover detailed information on endangered species in India, including their habitats, threats, and conservation status.
        </p>
        <h5 class="mb-3">
          <i class="far fa-check-circle text-primary me-3"></i>Conservation Areas in India
        </h5>
        <p class="mb-3">
          Explore the protected areas and wildlife sanctuaries in India that are crucial for the preservation of biodiversity.
        </p>
        <h5 class="mb-3">
          <i class="far fa-check-circle text-primary me-3"></i>Research and Studies
        </h5>
        <p class="mb-3">
          Access the latest research and studies on wildlife conservation, conducted by leading scientists and researchers.
        </p>
        <h5 class="mb-3">
          <i class="far fa-check-circle text-primary me-3"></i>Animal Stories
        </h5>
        <p class="mb-3">
          Read inspiring stories of individual animals and the conservation heroes working tirelessly to protect them.
        </p>
        <a class="btn btn-primary py-3 px-5 mt-3" href="Wildlife/index.html">Read More</a>
      </div>
      <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
        <div class="flip-container">
          <div class="flipper">
            <div class="front">
              <img class="img-fluid" src="img/leopard.jpg" alt="About WildGuard 1" />
            </div>
            <div class="back">
              <img class="img-fluid" src="img/pandas.webp" alt="About WildGuard 2" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- About End -->



<!-- Call to Action Start -->
<div class="container-xxl py-5 bg-light">
  <div class="container">
    <div class="row g-5 align-items-center">
      <div class="col-lg-6">
        <h2 class="display-6 mb-4">Support Wildlife Conservation</h2>
        <p class="mb-4" style="text-align: justify;">
          Join our efforts to safeguard endangered species and their habitats. You can get involved by adopting a species, supporting wildlife monitoring programs, or contributing to our conservation projects. Every action helps in preserving our planet's biodiversity.
        </p>
        <div class="d-flex flex-column flex-md-row">
          <a class="btn btn-primary py-3 px-5 mb-2 mb-md-0 me-md-3" href="/Adoption/adopt_species.jsp">Adopt a Species</a>
          <a class="btn btn-secondary py-3 px-5" href="https://keepingtrack.org/wildlife-monitoring-programs">Support Monitoring Programs</a>
        </div>
      </div>
      <div class="col-lg-6">
        <img class="img-fluid" src="img/volunter.avif" alt="Support Wildlife">
      </div>
    </div>
  </div>
</div>






<!-- Facts Start -->
<div class="container-xxl bg-primary facts my-5 py-5 wow fadeInUp" data-wow-delay="0.1s">
   

    <div class="container py-5">
        <div class="row g-3">
            <!-- Icons in a single line -->
            <div class="col-md-4 text-center wow fadeIn" data-wow-delay="0.1s">
                <i class="fa fa-tree fa-3x text-primary mb-3"></i>
                <h1 class="text-white mb-2" data-toggle="counter-up">106</h1>
                <p class="text-white mb-0">National Parks</p>
            </div>
            <div class="col-md-4 text-center wow fadeIn" data-wow-delay="0.3s">
                <i class="fa fa-paw fa-3x text-primary mb-3"></i>
                <h1 class="text-white mb-2" data-toggle="counter-up">573</h1>
                <p class="text-white mb-0">Wildlife Sanctuaries</p>
            </div>
            <div class="col-md-4 text-center wow fadeIn" data-wow-delay="0.5s">
                <i class="fa fa-leaf fa-3x text-primary mb-3"></i>
                <h1 class="text-white mb-2" data-toggle="counter-up">115</h1>
                <p class="text-white mb-0">Conservation Reserve</p>
            </div>
        </div>
       
    </div>
</div>
<!-- Facts End -->


  
  
   <marquee class="goal-marquee" behavior="scroll" direction="left">
                    Our main goal is to protect endangered species and their habitats through comprehensive conservation programs.
                </marquee>
  <!-- Facts End -->
  
<!-- Service Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="col-lg-6">
                  
                <h1 class="display-5 mb-0">
                    Dedicated Services for
                    <span class="text-primary">WildGuard</span> Visitors
                </h1>
                
            </div>
        </div>
        <div class="row gy-5 gx-4">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/conservation.jpg" alt="Conservation Icon" />
                    <h5 class="mb-3">Wildlife Conservation</h5>
                    <p>Learn about our efforts to protect endangered species and their habitats through various conservation programs.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/Research.png" alt="Research Icon" />
                    <h5 class="mb-3">Research and Monitoring</h5>
                    <p>Participate in our ongoing research projects and monitoring programs to track wildlife populations and health.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/educationlogo.jpg" alt="Education Icon" />
                    <h5 class="mb-3">Educational Programs</h5>
                    <p>Engage in our educational workshops and outreach programs designed to raise awareness about wildlife conservation.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/communitylogo.jpg" alt="Community Icon" />
                    <h5 class="mb-3">Community Involvement</h5>
                    <p>Join our community initiatives to support local conservation efforts and promote sustainable practices.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.9s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/volunter12.png" alt="Volunteer Icon" />
                    <h5 class="mb-3">Volunteer Opportunities</h5>
                    <p>Get involved by volunteering in various conservation projects and making a direct impact on wildlife protection.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="1.1s">
                <div class="service-item text-center p-4">
                    <img class="img-fluid mb-3 service-icon" src="img/support.jpg" alt="Donation Icon" />
                    <h5 class="mb-3">Support and Donations</h5>
                    <p>Help us continue our mission by providing financial support or donating resources to our conservation programs.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->
<!-- Animal Start -->
<div class="container-xxl py-5">
  <div class="container">
    <div class="row g-5 mb-5 align-items-center text-center text-lg-start">
      <div class="col-lg-6">
       
        <h1 class="display-4 mb-0">
          Discover <span class="text-primary">India's</span> Endangered Animals
        </h1>
      </div>
      <div class="col-lg-6 text-lg-end">
        <a class="btn btn-primary py-3 px-5" href="wildlife gallery/index.html">Explore More Animals</a>
      </div>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      <div class="col wow fadeInUp" data-wow-delay="0.1s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/indianelephant2.jpg" class="card-img" alt="Indian Elephant">
              <div class="card-info">
                <h5>Indian Elephant</h5>
                <p>Endangered due to habitat loss and poaching.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Indian Elephant</h5>
                <p style=text-align:justify;>Indian elephants typically live in small herds consisting of related females, their female offspring and young immature males. The elephants are extremely social animals and form complex social relationships. They often work together as a group to raise their young and to protect the herd.</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col wow fadeInUp" data-wow-delay="0.3s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/glm.jpg" class="card-img" alt="Golden Langur">
              <div class="card-info">
                <h5>Golden Langur</h5>
                <p>Endangered due to habitat destruction and hunting.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Golden Langur</h5>
                <p style=text-align:justify;>Gee's golden langur is currently endangered with a decreasing population trend; the total population of mature adults has been estimated as 6000–6500. It is one of the most endangered primate species of India and Bhutan.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col wow fadeInUp" data-wow-delay="0.5s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/bengal.jpg" class="card-img" alt="Bengal Tiger">
              <div class="card-info">
                <h5>Bengal Tiger</h5>
                <p>Endangered due to poaching and habitat loss.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Bengal Tiger</h5>
                <p style=text-align:justify;>India's national animal, the Royal Bengal Tiger, is an endangered species facing significant threats of poaching and habitat destruction. Over the last 30 years, the world's tiger population has seen a 50 percent decline, with less than 4,000 living in the world.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col wow fadeInUp" data-wow-delay="0.7s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/Indian-one-horned-rhinoceros.jpg" class="card-img" alt="Indian One Horned Rhinoceros">
              <div class="card-info">
                <h5>Indian One Horned Rhinoceros</h5>
                <p>Endangered due to poaching and habitat loss.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Indian One Horned Rhinoceros</h5>
                <p style=text-align:justify;>The greater one-horned rhino, also known as the Indian rhino, is vulnerable to extinction, but its population is increasing. The main threat to the species is poaching for its horn, which is used in traditional Asian medicine. Other threats include habitat loss, population density, and decreasing genetic diversity.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col wow fadeInUp" data-wow-delay="0.9s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/Sangai.jpg" class="card-img" alt="Sangai">
              <div class="card-info">
                <h5>Sangai</h5>
                <p>Endangered due to habitat loss and hunting.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Sangai</h5>
                <p style=text-align:justify;>The Sangai is a medium-sized deer with distinctive antlers that have an extremely long brow tine that forms the main beam. The beam appears to come out from the eyebrow, giving the deer its name. It also has a short tail, a dark reddish brown winter coat that turns paler in summer, and females fawn all year round. The Sangai walks on the hind surface of its pasterns with mincing hops over floating foliage, earning it the nickname "Dancing Deer".</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col wow fadeInUp" data-wow-delay="1.1s">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="img/lions.jpg" class="card-img" alt="Asiatic Lion">
              <div class="card-info">
                <h5>Asiatic Lion</h5>
                <p style=text-align:justify;>Endangered due to habitat loss and human-wildlife conflict.</p>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card-info">
                <h5>Asiatic Lion</h5>
                <p style=text-align:justify;>It is one of the five pantherine cats native to India. The others are the Bengal Tiger, the Indian Leopard, the Snow Leopard, and the Clouded Leopard. It is one of the most endangered big cats globally, with a population estimated at around 650 individuals.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Animal End -->

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
 