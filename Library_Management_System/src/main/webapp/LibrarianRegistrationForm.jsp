<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Library Registration Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background: url('https://images.unsplash.com/photo-1521587760476-6c12a4b040da?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGlicmFyeXxlbnwwfHwwfHx8MA%3D%3D') no-repeat center center / cover fixed;
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
        }
        .container {
            max-width: 400px;
            width: 100%;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 1px solid #ddd;
            border-radius: 12px;
            overflow: hidden;
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            transition: box-shadow 0.3s, border-color 0.3s;
            padding: 30px;
            margin: 20px;
        }
        .container:hover {
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
            border-color: #007bff;
        }
        .form-title {
            margin-bottom: 20px;
            font-size: 32px;
            font-weight: bold;
            text-align: center;
            color: #333;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            border-radius: 8px;
            padding: 12px;
            border: 2px solid rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(5px);
            color: #333;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .form-control::placeholder {
            color: rgba(51, 51, 51, 0.6);
        }
        .form-control:hover, .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            background-color: rgba(255, 255, 255, 1);
        }
        .btn-primary {
            width: 100%;
            border-radius: 8px;
            padding: 12px;
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .container {
            animation: fadeIn 1s ease-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

<div class="container">
    <h3 class="form-title">Register</h3>
    <form action="LibrarianRegistration" method="post">
        <div class="mb-4">
            <label for="txtFullName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="txtFullName" name="fullName" placeholder="Full Name" required>
        </div>
        <div class="mb-4">
            <label for="txtAddress" class="form-label">Address</label>
            <textarea class="form-control" id="txtAddress" name="address" placeholder="Address" rows="3" required></textarea>
        </div>
        <div class="mb-4">
            <label for="txtContactNumber" class="form-label">Contact Number</label>
            <input type="tel" class="form-control" id="txtContactNumber" name="contactNumber" placeholder="Contact Number" required>
        </div>
        <div class="mb-4">
            <label for="txtEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="txtEmail" name="email" placeholder="Email" required>
        </div>
        <div class="mb-4">
            <label for="txtUsername" class="form-label">Username</label>
            <input type="text" class="form-control" id="txtUsername" name="username" placeholder="Username" required>
        </div>
        <div class="mb-4">
            <label for="txtPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="txtPassword" name="password" placeholder="Password" required>
        </div>
        <div class="mb-4">
            <label for="txtConfirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="txtConfirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger mt-3">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
