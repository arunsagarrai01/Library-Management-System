<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Add a New Book</h2>

        <!-- Check if form is submitted -->
        <%
            String message = "";
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                // Retrieve form data
                String title = request.getParameter("title");
                String author = request.getParameter("author");
                String publishedYear = request.getParameter("publishedYear");
                String genre = request.getParameter("genre");
                String available = request.getParameter("available");

                // Default availability to false if not checked
                boolean isAvailable = (available != null && available.equals("on"));

                // Database connection details
                String dbURL = "jdbc:mysql://localhost:3306/LibraryDB";
                String dbUser = "root";
                String dbPassword = "yourpassword"; // Replace with your actual database password

                Connection connection = null;
                PreparedStatement preparedStatement = null;

                try {
                    // Establish connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                    // Insert book record
                    String sql = "INSERT INTO Books (Title, Author, PublishedYear, Genre, Available) VALUES (?, ?, ?, ?, ?)";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setString(1, title);
                    preparedStatement.setString(2, author);
                    preparedStatement.setInt(3, Integer.parseInt(publishedYear));
                    preparedStatement.setString(4, genre);
                    preparedStatement.setBoolean(5, isAvailable);

                    int result = preparedStatement.executeUpdate();

                    if (result > 0) {
                        message = "Book added successfully!";
                    } else {
                        message = "Error adding book. Please try again.";
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    message = "Error connecting to the database.";
                } finally {
                    try {
                        if (preparedStatement != null) preparedStatement.close();
                        if (connection != null) connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>

        <!-- Display form or success/error message -->
        <%
            if (message.isEmpty()) {
        %>
        <form action="add_book.jsp" method="post">
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="mb-3">
                <label for="author" class="form-label">Author</label>
                <input type="text" class="form-control" id="author" name="author" required>
            </div>
            <div class="mb-3">
                <label for="publishedYear" class="form-label">Published Year</label>
                <input type="number" class="form-control" id="publishedYear" name="publishedYear" required>
            </div>
            <div class="mb-3">
                <label for="genre" class="form-label">Genre</label>
                <input type="text" class="form-control" id="genre" name="genre">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="available" name="available" checked>
                <label class="form-check-label" for="available">Available</label>
            </div>
            <button type="submit" class="btn btn-primary">Add Book</button>
        </form>
        <% 
            } else {
        %>
        <div class="alert alert-info" role="alert">
            <%= message %>
        </div>
        <% 
            } 
        %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
