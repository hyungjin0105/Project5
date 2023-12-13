<%-- Created by IntelliJ IDEA. User: 우병희 Date: 2023-12-01 Time: 오후 2:15 To change this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 20px;
        }
        .container {
            max-width: 600px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <h1 class="card-header">View Post</h1>
        <div class="card-body">
            <h5 class="card-title">${list.title}</h5>
            <h6 class="card-subtitle mb-2 text-muted">${list.category}</h6>
            <p class="card-text">${list.content}</p>
            <p class="card-text"><small class="text-muted">Written by ${list.writer} on ${list.publishdate}</small></p>
            <p class="card-text"><small class="text-muted">Recommended by ${list.recommendname}</small></p>
            <p class="card-text"><small class="text-muted">Contact: ${list.recommendemail}</small></p>
            <p class="card-text"><small class="text-muted">Registered on ${list.regdate}</small></p>
            <button type="button" class="btn btn-primary" onclick="location.href='../posts'">Back to List</button>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>
