<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Species Management | WildHaven</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-top: 70px;
        }

        .navbar {
            background-color: #004d40;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.8rem;
            color: #ffffff;
        }

        .navbar-nav .nav-link {
            color: #ffffff;
            font-size: 1rem;
            margin-left: 15px;
        }

        .container {
            margin-top: 25px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            background-color: #00796b;
            color: #ffffff;
            font-size: 1.6rem;
            border-bottom: none;
            padding: 15px 20px;
        }

        .card-body {
            padding: 25px;
            background-color: #ffffff;
        }

        h2 {
            color: #004d40;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            color: #004d40;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        label i {
            margin-right: 10px;
            color: #00796b;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            font-size: 1rem;
        }

        .btn-success {
            background-color: #004d40;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-success:hover {
            background-color: #00332e;
        }

        footer {
            background-color: #004d40;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
        }

        footer p, footer small {
            margin: 0;
            font-size: 0.9rem;
        }

    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top">
        <div class="container">
            <a href="#" class="navbar-brand">WildHaven</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">Species List</a>
                    </li>
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/about" class="nav-link">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/contact" class="nav-link">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container col-md-8">
    <div class="card">
        <div class="card-header">
            <c:choose>
                <c:when test="${species != null}">Edit Species</c:when>
                <c:otherwise>Add New Species</c:otherwise>
            </c:choose>
        </div>
        <div class="card-body">
            <form action="${species != null ? 'update' : 'insert'}" method="post">
                <c:if test="${species != null}">
                    <input type="hidden" name="speciesID" value="<c:out value='${species.speciesID}' />" />
                </c:if>
                <div class="form-group">
                    <label><i class="fas fa-tag"></i>Common Name</label>
                    <input type="text" value="<c:out value='${species.commonName}' />" class="form-control" name="commonName" required>
                </div>
                <div class="form-group">
                    <label><i class="fas fa-book"></i>Scientific Name</label>
                    <input type="text" value="<c:out value='${species.scientificName}' />" class="form-control" name="scientificName" required>
                </div>
                <div class="form-group">
                    <label><i class="fas fa-info-circle"></i>Conservation Status</label>
                    <select class="form-control" name="conservationStatus">
                        <option value="Endangered" <c:if test="${species.conservationStatus == 'Endangered'}">selected</c:if>>Endangered</option>
                        <option value="Vulnerable" <c:if test="${species.conservationStatus == 'Vulnerable'}">selected</c:if>>Vulnerable</option>
                        <option value="Least Concern" <c:if test="${species.conservationStatus == 'Least Concern'}">selected</c:if>>Least Concern</option>
                        <option value="Extinct" <c:if test="${species.conservationStatus == 'Extinct'}">selected</c:if>>Extinct</option>
                    </select>
                </div>
                <div class="form-group">
                    <label><i class="fas fa-tree"></i>Habitat</label>
                    <input type="text" value="<c:out value='${species.habitat}' />" class="form-control" name="habitat">
                </div>
                <div class="form-group">
                    <label><i class="fas fa-users"></i>Population Count</label>
                    <input type="number" value="<c:out value='${species.populationCount}' />" class="form-control" name="populationCount">
                </div>
                <div class="form-group">
                    <label><i class="fas fa-globe"></i>Region Found</label>
                    <input type="text" value="<c:out value='${species.regionFound}' />" class="form-control" name="regionFound">
                </div>
                <div class="form-group">
                    <label><i class="fas fa-exclamation-triangle"></i>Threats</label>
                    <textarea class="form-control" name="threats" rows="3"><c:out value='${species.threats}' /></textarea>
                </div>
                <div class="form-group">
                    <label><i class="fas fa-align-left"></i>Description</label>
                    <textarea class="form-control" name="description" rows="4"><c:out value='${species.description}' /></textarea>
                </div>
                <div class="form-group">
                    <label><i class="fas fa-calendar-alt"></i>Date Added</label>
                    <input type="datetime-local" value="<c:out value='${fn:substring(user.dateAdded, 0, 19)}' />" class="form-control" name="dateAdded">
                </div>
                <div class="form-group">
                    <label><i class="fas fa-image"></i>Image URL</label>
                    <input type="text" value="<c:out value='${species.image}' />" class="form-control" name="image">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success">
                        <c:choose>
                            <c:when test="${species != null}">Update</c:when>
                            <c:otherwise>Save</c:otherwise>
                        </c:choose>
                    </button>
                    <a href="<%=request.getContextPath()%>/list" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 WildHaven. All Rights Reserved.</p>
    <small>Protecting Wildlife for Future Generations</small>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGaIOFTHNoFaTZi9a3GDiVB9i2" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+dLhf1W0j5iJXbi6wkA3tLbBqLWTbKL7B6qftrcVSEnQq1E+7" crossorigin="anonymous"></script>
</body>
</html>
