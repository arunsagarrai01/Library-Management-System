<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .dashboard-container {
        margin-top: 50px;
    }
    .card {
        margin-bottom: 20px;
    }
    .card-title {
        color: #007bff;
    }
    .btn-custom {
        background-color: #007bff;
        color: #fff;
    }
    .btn-custom:hover {
        background-color: #0056b3;
        color: #fff;
    }
</style>
</head>
<body>
    <div class="container dashboard-container">
        <div class="row">
            <div class="col-12 text-center mb-4">
                <h1 class="display-4">Welcome to User Dashboard</h1>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Profile</h5>
                        <p class="card-text">View and edit your profile information.</p>
                        <a href="#" class="btn btn-custom">Go to Profile</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Books</h5>
                        <p class="card-text">Browse the library and check out books.</p>
                        <a href="#" class="btn btn-custom">Browse Books</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Loans</h5>
                        <p class="card-text">Manage your borrowed books and due dates.</p>
                        <a href="#" class="btn btn-custom">Manage Loans</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
