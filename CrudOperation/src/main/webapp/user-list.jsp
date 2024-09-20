<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Species Management | WildHaven</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" integrity="sha384-OMPpTzTM9J5iTt4kMFA9AwFNwH8T5N+mWjXpX1dxMPhSLlNxZo9Y6J5Uo5pXs5t2" crossorigin="anonymous">
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
     <!-- Include Chart.js library for charting -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .chart-container {
            position: relative;
            height: 40vh;
            width: 80vw;
            margin-top: 50px;
        }
        body {
            background-color: #e8f5e9;
            font-family:Timesnewroamn;
            margin: 0;
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 140px;
            background-color: #004d40;
            color: #ffffff;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            bottom: 0;
            overflow-y: auto;
             animation: colorDance 10s infinite; /* Apply the color dance animation */
        }

        .sidebar .nav-link {
            color: #ffffff;
            font-size: 1.1rem;
            margin-bottom: 10px;
            display: block;
        }

        .sidebar .nav-link:hover {
            color: #c8e6c9;
            text-decoration: none;
        }

        .main-content {
            margin-left: 220px;
            padding: 20px;
            flex: 1;
            transition: margin-left 0.3s ease;
            
        }

        .header-container {
            background: ;
            color: #004d40;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
            position: relative;
            z-index: 2;
             margin-left:-50px;
           
        }

        .header-container h3 {
            font-size: 2rem;
            margin-bottom: 5px;
            margin-top: 10px;
            padding-bottom: 15px;
          
        }

        .header-container p {
            font-size: 1.1rem;
            margin: 0;
        }

        .header-container .btn-primary {
            position: absolute;
            right: 20px;
            top: 20px;
          background-color:blue;
            border: none;
            border-radius: 25px;
            color: #ffff;
            font-size: 1.1rem;
            font-weight: 600;
            padding: 10px 25px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .header-container .btn-primary:hover {
           background: green;
            transform: translateY(-2px);
        }

        .table-container {
            overflow-x: auto;
            margin-top: 20px;
            margin-left:-50px;
        }

        table {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            margin: auto;
          text-align:justify;
        }

        th {
            background-color: #004d40;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        td {
            text-align: center;
            vertical-align: middle;
        }

        td, th {
            padding: 12px;
        }

        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
            transform: scale(1.02);
            transition: transform 0.2s ease;
        }

        .action-links .btn-icon {
            border: none;
            background: none;
            font-size: 1.2rem;
            transition: color 0.3s ease, transform 0.2s ease;
        }

        /* Edit button */
        .action-links .btn-icon.edit-btn {
            color: #004d40; /* Dark teal for edit */
        }

        .action-links .btn-icon.edit-btn:hover {
            color: #002d2a; /* Darker teal on hover */
        }

        /* Delete button */
        .action-links .btn-icon.delete-btn {
            color: #e53935; /* Red for delete */
        }

        .action-links .btn-icon.delete-btn:hover {
            color: #b71c1c; /* Darker red on hover */
            transform: scale(1.1);
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                position: static;
                box-shadow: none;
            }

            .main-content {
                margin-left: 0;
            }

            .header-container {
                padding: 15px;
                position: static;
                margin-top: 0;
                z-index: 1;
            }

            .header-container .btn-primary {
                width: 100%;
                position: static;
                margin-top: 15px;
                font-size: 1rem;
            }

            table {
                font-size: 0.9rem;
                min-width: 100%;
                margin-left: 0;
            }
        }
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        .main-content {
            flex: 1;
            margin-left: 220px; /* Sidebar width */
        }

        .footer {
            clear: both;
        }

        @media (max-width: 768px) {
            .main-content {
                margin-left: 0;
            }
        }
        
        
 @keyframes colorDance {
    0% { background-color: #004d40; }
    25% { background-color: #00796b; }
    50% { background-color: #009688; }
    75% { background-color: #00796b; }
    100% { background-color: #004d40; }
}       
    </style>
</head>
<body>
  <aside class="sidebar">
    <h2>WildHaven</h2>
    <nav class="nav flex-column">
        <a href="<%=request.getContextPath()%>/" class="nav-link">
            <i class="fas fa-tachometer-alt"></i> Dashboard
        </a>
        <br>
        <a href="/IBM_PROJECTS_OJT2024" class="nav-link home-link">
            <i class="fas fa-home"></i> Home
        </a>
    </nav>
</aside>

   
    <div class="main-content">
    <div class="header-container">
        <h3>Species Management</h3>
        <p>Manage and view all species in the system</p>
        <a href="<%=request.getContextPath()%>/new" class="btn btn-primary">
            <i class="fas fa-plus-circle"></i> Add New Species
        </a>
    </div>
        <div class="table-container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Common Name</th>
                        <th>Scientific Name</th>
                        <th>Conservation Status</th>
                        <th>Habitat</th>
                        <th>Population Count</th>
                        <th>Region Found</th>
                        <th>Threats</th>
                        <th>Description</th>
                        <th>Date Added</th>
                        <th>Image</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="species" items="${listSpecies}">
                        <tr>
                            <td><c:out value="${species.speciesID}" /></td>
                            <td><c:out value="${species.commonName}" /></td>
                            <td><c:out value="${species.scientificName}" /></td>
                            <td><c:out value="${species.conservationStatus}" /></td>
                            <td><c:out value="${species.habitat}" /></td>
                            <td><c:out value="${species.populationCount}" /></td>
                            <td><c:out value="${species.regionFound}" /></td>
                            <td><c:out value="${species.threats}" /></td>
                            <td><c:out value="${species.description}" /></td>
                            <td><c:out value="${species.dateAdded}" /></td>
                            <td>
                                <!-- Display the image using the image URL -->
                                <c:if test="${species.image != null && !species.image.isEmpty()}">
                                    <img src="${species.image}" alt="Image of ${species.commonName}" class="img-fluid" style="max-width: 100px;">
                                </c:if>
                            </td>
                            <td class="action-links">
                                <a href="<%=request.getContextPath()%>/edit?speciesID=${species.speciesID}" class="btn-icon edit-btn"><i class="fas fa-edit"></i></a>
                                <a href="<%=request.getContextPath()%>/delete?speciesID=${species.speciesID}" class="btn-icon delete-btn"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="chart-container">
            <canvas id="speciesChart"></canvas>
        </div>
    </div>
   

    <script>
        // Fetch the data from the server-side (you can adapt this to your own data source)
        const speciesData = {
            labels: [<c:forEach var="species" items="${listSpecies}">
                '<c:out value="${species.commonName}"/>',
            </c:forEach>],
            datasets: [{
                label: 'Population Count',
                data: [<c:forEach var="species" items="${listSpecies}">
                    <c:out value="${species.populationCount}"/>,
                </c:forEach>],
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                hoverBackgroundColor: 'rgba(255, 99, 132, 0.2)',
                hoverBorderColor: 'rgba(255, 99, 132, 1)'
            }]
        };

        const ctx = document.getElementById('speciesChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: speciesData,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: true,
                        labels: {
                            color: '#004d40',
                            font: {
                                size: 16
                            }
                        }
                    },
                    tooltip: {
                        backgroundColor: '#004d40',
                        titleColor: '#fff',
                        bodyColor: '#fff',
                        borderColor: '#00332b',
                        borderWidth: 1
                    }
                },
                responsive: true,
                maintainAspectRatio: false
            }
        });
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
