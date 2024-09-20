<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="userheader.jsp" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conservation Areas India</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
        /* Custom CSS */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }

        .custom-hero {
            position: relative;
            height: 730px; 
            background-color: #000;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .custom-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: fill;
            z-index: 0;
        }

        .custom-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 1;
            
        }

        .custom-wrap{
            background: rgba(103, 98, 98, 0.2);
        }

        .custom-heading,
        .custom-subtext {
            position: relative;
            z-index: 2;
            color:orange;
            text-align: center;
            animation: fadeInUp 1s ease-in-out;
            will-change: transform;
            
        }

        .custom-heading {
            font-size: 3rem;
            font-weight: bold;
            animation: bounceIn 3s ease-in-out;
        }

        .custom-subtext {
            font-size: 1.5rem;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes bounceIn {
            0%, 20%, 40%, 60%, 80%, 100% {
                -webkit-animation-timing-function: ease-in-out;
                animation-timing-function: ease-in-out;
            }
            0% {
                opacity: 0;
                transform: scale3d(.3, .3, .3);
            }
            20% {
                transform: scale3d(1.1, 1.1, 1.1);
            }
            40% {
                transform: scale3d(.9, .9, .9);
            }
            60% {
                opacity: 1;
                transform: scale3d(1.03, 1.03, 1.03);
            }
            80% {
                transform: scale3d(.97, .97, .97);
            }
            100% {
                opacity: 1;
                transform: scale3d(1, 1, 1);
            }
        }

        .banner-quote {
            padding: 30px; /* Increased padding for a bigger banner */
            background-color: #004d40;
            color: #fff;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            margin-top: 20px;
            position: relative;
            overflow: hidden;
        }

        .banner-quote:hover {
            background-color: #00796b;
            transition: background-color 0.5s ease;
        }

        .banner-quote:after {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            transform: skewX(-20deg);
            transition: left 0.5s ease;
        }

        .banner-quote:hover:after {
            left: 100%;
        }

        .media-entry-custom {
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            height: 100%;
            display: flex;
            flex-direction: column;
            background: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .media-entry-custom:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .media-image img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .media-body-custom {
            padding: 20px;
            flex-grow: 1;
        }

        .media-body-custom h3 {
            font-size: 1.5rem;
            margin-top: 10px;
            font-weight: bold;
            color: #27ae60;
        }

        .media-body-custom p {
            font-size: 1rem;
            color: #777;
        }

        .read-more-link {
            display: flex;
            align-items: center;
            font-weight: bold;
            color: #27ae60;
            text-decoration: none;
            transition: color 0.3s;
        }

        .read-more-link:hover {
            color: #2ecc71;
        }

        .read-more-icon {
            margin-left: 5px;
        }

        .banner {
            padding: 20px;
            border-radius: 10px;
            transition: transform 0.3s ease-in-out;
        }

        .banner:hover {
            transform: scale(1.05);
        }

        .btn-custom {
            background-color: #27ae60;
            color: #fff;
            border-radius: 50px;
            padding: 10px 20px;
            transition: background-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #2ecc71;
        }

        #parksTable th {
            cursor: pointer;
            background-color: #27ae60;
            color: #fff;
        }

        #parksTable th:hover {
            background-color: #2ecc71;
        }

        #searchInput {
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 50px;
            border: 1px solid #27ae60;
        }

        @media (max-width: 768px) {
            .custom-heading {
                font-size: 3rem;
            }

            .custom-subtext {
                font-size: 1.2rem;
            }
        }
    </style>
</head>

<body>
    <!-- Hero Section -->
    <div class="custom-hero">
        <video autoplay loop muted class="custom-video">
            <source src="img/animal.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <!-- <div class="custom-overlay"></div> -->
        <div class=" custom-wrap text-center">
            <h1 class="custom-heading" data-aos="zoom-in">Conservation Areas India</h1>
            <p class="custom-subtext" data-aos="fade-up">Explore the major conservation areas of India.</p>
        </div>
    </div>

    <!-- Banner with Quote -->
    <div class="banner-quote" data-aos="flip-left">
        "Conserving India's Biodiversity."
    </div>

    <!-- Banners and Cards Section -->
    <section class="container my-5">
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="banner card text-white bg-success">
                    <div class="card-body">
                        <h5 class="card-title">India's Iconic Conservation Areas</h5>
                        <p class="card-text">Discover some of India's most renowned parks, sanctuaries, and reserves. These protected areas are crucial for preserving our country's diverse ecosystems, each harboring unique species and natural beauty.</p>
                        <a href="#" class="btn btn-light btn-custom">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="banner card text-white bg-primary">
                    <div class="card-body">
                        <h5 class="card-title">Top National Parks in India</h5>
                        <p class="card-text">Journey through India's famous wildlife sanctuaries, home to endangered species and vibrant biodiversity. These parks are essential for conservation and offer a glimpse into the wild heart of India.</p>
                        <a href="Wildlife/index.html" class="btn btn-light btn-custom">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Interactive Table Section -->
    <section class="container my-5">
        <h2 class="mb-4">Conservation Areas of India</h2>
        <input class="form-control mb-3" id="searchInput" type="text" placeholder="Search for parks or animals...">
        <table class="table table-hover table-responsive" id="parksTable">
            <thead class="table-dark">
                <tr>
                    <th onclick="sortTable(0)">Name</th>
                    <th onclick="sortTable(1)">Type</th>
                    <th onclick="sortTable(2)">Area (sq km)</th>
                    <th onclick="sortTable(3)">Established</th>
                    <th onclick="sortTable(4)">Endangered Animals</th>
                    <th onclick="sortTable(5)">Famous Animals</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jim Corbett National Park</td>
                    <td>National Park</td>
                    <td>520</td>
                    <td>1936</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Elephant</td>
                </tr>
                <tr>
                    <td>Kaziranga National Park</td>
                    <td>National Park</td>
                    <td>1,070</td>
                    <td>1974</td>
                    <td>One-horned Rhinoceros</td>
                    <td>Elephant, Wild Buffalo</td>
                </tr>
                <tr>
                    <td>Sundarbans National Park</td>
                    <td>National Park</td>
                    <td>1,330</td>
                    <td>1984</td>
                    <td>Bengal Tiger</td>
                    <td>Crocodile, Fishing Cat</td>
                </tr>
                <tr>
                    <td>Ranthambore National Park</td>
                    <td>National Park</td>
                    <td>1,334</td>
                    <td>1955</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Nilgai</td>
                </tr>
                <tr>
                    <td>Gir National Park</td>
                    <td>National Park</td>
                    <td>1,412</td>
                    <td>1965</td>
                    <td>Asiatic Lion</td>
                    <td>Leopard, Sambar Deer</td>
                </tr>
                <tr>
                    <td>Bandhavgarh National Park</td>
                    <td>National Park</td>
                    <td>448</td>
                    <td>1968</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Deer</td>
                </tr>
                <tr>
                    <td>Pench National Park</td>
                    <td>National Park</td>
                    <td>758</td>
                    <td>1977</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Wild Dog</td>
                </tr>
                <tr>
                    <td>Periyar National Park</td>
                    <td>National Park</td>
                    <td>925</td>
                    <td>1982</td>
                    <td>Elephant</td>
                    <td>Tiger, Nilgiri Tahr</td>
                </tr>
                <tr>
                    <td>Hemis National Park</td>
                    <td>National Park</td>
                    <td>4,400</td>
                    <td>1981</td>
                    <td>Snow Leopard</td>
                    <td>Tibetan Wolf, Eurasian Brown Bear</td>
                </tr>
                <tr>
                    <td>Nanda Devi National Park</td>
                    <td>National Park</td>
                    <td>630</td>
                    <td>1982</td>
                    <td>Snow Leopard</td>
                    <td>Himalayan Black Bear, Blue Sheep</td>
                </tr>
                <tr>
                    <td>Bharatpur Bird Sanctuary (Keoladeo National Park)</td>
                    <td>Sanctuary</td>
                    <td>29</td>
                    <td>1971</td>
                    <td>Siberian Crane (Migratory)</td>
                    <td>Painted Stork, Pelican</td>
                </tr>
                <tr>
                    <td>Periyar Wildlife Sanctuary</td>
                    <td>Sanctuary</td>
                    <td>925</td>
                    <td>1950</td>
                    <td>Elephant</td>
                    <td>Tiger, Nilgiri Tahr</td>
                </tr>
                <tr>
                    <td>Bhadra Wildlife Sanctuary</td>
                    <td>Sanctuary</td>
                    <td>492</td>
                    <td>1951</td>
                    <td>Tiger</td>
                    <td>Leopard, Sloth Bear</td>
                </tr>
                <tr>
                    <td>Nagarhole Wildlife Sanctuary</td>
                    <td>Sanctuary</td>
                    <td>643</td>
                    <td>1955</td>
                    <td>Elephant</td>
                    <td>Bengal Tiger, Indian Bison</td>
                </tr>
                <tr>
                    <td>Manas Wildlife Sanctuary</td>
                    <td>Sanctuary</td>
                    <td>950</td>
                    <td>1928</td>
                    <td>Assam Roofed Turtle, Hispid Hare</td>
                    <td>Indian Rhinoceros, Bengal Tiger</td>
                </tr>
                <tr>
                    <td>Sariska Tiger Reserve</td>
                    <td>Tiger Reserve</td>
                    <td>866</td>
                    <td>1955</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Hyena</td>
                </tr>
                <tr>
                    <td>Bandipur Tiger Reserve</td>
                    <td>Tiger Reserve</td>
                    <td>874</td>
                    <td>1973</td>
                    <td>Bengal Tiger</td>
                    <td>Elephant, Leopard</td>
                </tr>
                <tr>
                    <td>Kanha Tiger Reserve</td>
                    <td>Tiger Reserve</td>
                    <td>940</td>
                    <td>1955</td>
                    <td>Bengal Tiger</td>
                    <td>Barasingha, Leopard</td>
                </tr>
                <tr>
                    <td>Panna Tiger Reserve</td>
                    <td>Tiger Reserve</td>
                    <td>543</td>
                    <td>1994</td>
                    <td>Bengal Tiger</td>
                    <td>Leopard, Sloth Bear</td>
                </tr>
                <tr>
                    <td>Sundarbans Tiger Reserve</td>
                    <td>Tiger Reserve</td>
                    <td>2,585</td>
                    <td>1973</td>
                    <td>Bengal Tiger</td>
                    <td>Fishing Cat, Estuarine Crocodile</td>
                </tr>
            </tbody>
        </table>
    </section>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();

        // Sort table columns
        function sortTable(columnIndex) {
            var table = document.getElementById("parksTable");
            var rows = Array.from(table.rows).slice(1);
            var ascending = true;
            var sortedRows;

            if (table.getAttribute("data-sorted-column") == columnIndex) {
                ascending = table.getAttribute("data-sort-order") == "asc" ? false : true;
            }

            sortedRows = rows.sort((a, b) => {
                var aText = a.cells[columnIndex].textContent.trim();
                var bText = b.cells[columnIndex].textContent.trim();

                if (columnIndex == 2 || columnIndex == 3) { // For numeric values
                    return ascending ? aText - bText : bText - aText;
                }

                return ascending ? aText.localeCompare(bText) : bText.localeCompare(aText);
            });

            table.tBodies[0].append(...sortedRows);

            table.setAttribute("data-sorted-column", columnIndex);
            table.setAttribute("data-sort-order", ascending ? "asc" : "desc");
        }

        // Search in the table
        document.getElementById("searchInput").addEventListener("input", function () {
            var input = this.value.toLowerCase();
            var rows = document.querySelectorAll("#parksTable tbody tr");

            rows.forEach(row => {
                var cells = row.querySelectorAll("td");
                var match = Array.from(cells).some(cell => cell.textContent.toLowerCase().includes(input));
                row.style.display = match ? "" : "none";
            });
        });
    </script>
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



