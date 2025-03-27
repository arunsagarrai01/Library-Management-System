<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1603994778020-490fc42536c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGZvcmVzdHxlbnwwfHx8fDE2NzEyNzM4NzI&ixlib=rb-1.2.1&q=80&w=1920') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }
        .container {
            max-width: 800px;
            margin: 100px auto;
            padding: 20px;
            background: rgba(0, 0, 0, 0.6);
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
            position: relative;
            overflow: hidden;
        }
        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 50%;
            height: 100%;
            border-right: 4px solid rgba(255, 255, 255, 0.5);
            background: rgba(0, 0, 0, 0.7);
            z-index: 0;
        }
        .carousel-item img {
            height: 400px;
            object-fit: cover;
            width: 100%;
        }
        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .carousel-caption h5 {
            font-size: 2rem;
            font-weight: bold;
        }
        .carousel-caption p {
            font-size: 1.2rem;
        }
        .content {
            position: relative;
            z-index: 1;
            color: #fff;
        }
        .content h1 {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .content p {
            font-size: 1.5rem;
            line-height: 1.6;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        .btn-primary {
            border-radius: 30px;
            padding: 12px 24px;
            font-size: 1.1rem;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .btn-outline-light {
            color: #fff;
            border-color: #fff;
            border-radius: 30px;
            padding: 12px 24px;
            font-size: 1.1rem;
            font-weight: bold;
            text-transform: uppercase;
            transition: color 0.3s, background-color 0.3s, border-color 0.3s;
        }
        .btn-outline-light:hover {
            color: #000;
            background-color: #fff;
            border-color: #fff;
        }
    </style>
</head>
<body>

<div class="container">
    <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://images.unsplash.com/photo-1506748686214e9df14b6b4d1d7c1c92?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGZvcmVzdHxlbnwwfHx8fDE2NzEyNzM4NzI&ixlib=rb-1.2.1&q=80&w=1920" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Welcome to Our Site</h5>
                    <p>Discover amazing content and stay updated with the latest trends.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1517245386807-bb43f82e028e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGZvcmVzdHxlbnwwfHx8fDE2NzEyNzM4NzI&ixlib=rb-1.2.1&q=80&w=1920" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Explore More</h5>
                    <p>Find out more about what we have to offer.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1516500767592-64b434626a9d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGZvcmVzdHxlbnwwfHx8fDE2NzEyNzM4NzI&ixlib=rb-1.2.1&q=80&w=1920" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Join Us</h5>
                    <p>Be part of our growing community.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="content mt-4">
        <h1 class="display-4">Welcome to Our Website</h1>
        <p class="lead">Explore our features and find out how we can help you achieve your goals.</p>
        <a href="LoginForm.jsp" class="btn btn-primary">Login</a>
        <a href="about.jsp" class="btn btn-outline-light ms-3">Learn More</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
