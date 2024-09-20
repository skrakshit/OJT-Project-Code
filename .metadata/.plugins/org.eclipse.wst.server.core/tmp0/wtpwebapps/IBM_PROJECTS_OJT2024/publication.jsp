<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wildlife Conservation Annual Reports</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #35424a;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        .content {
            background: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .report-list {
            list-style: none;
            padding: 0;
        }
        .report-list li {
            margin-bottom: 15px;
        }
        .report-list a {
            text-decoration: none;
            color: #35424a;
            font-size: 16px;
            font-weight: bold;
        }
        .report-list a:hover {
            color: #007bff;
        }
        .footer {
            background: #35424a;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Wildlife Conservation Annual Reports</h1>
        </div>
    </header>

    <div class="container content">
        <h2>Annual Reports</h2>
        <p>Welcome to the Wildlife Conservation and Protection System. Below you can find and download the annual reports for our wildlife conservation efforts.</p>
        
        <ul class="report-list">
            <li><a href="pdfs/annual_report_2020.pdf" download>Annual Report 2020</a></li>
            <li><a href="pdfs/annual_report_2021.pdf" download>Annual Report 2021</a></li>
            <li><a href="pdfs/annual_report_2022.pdf" download>Annual Report 2022</a></li>
            <li><a href="pdfs/annual_report_2023.pdf" download>Annual Report 2023</a></li>
        </ul>
    </div>

    <div class="footer">
        <p>&copy; 2024 Wildlife Conservation and Protection System. All rights reserved.</p>
    </div>
</body>
</html>
