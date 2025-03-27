<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
</head>
<body>
    <h1>Book Registration</h1>
    <form action="addBook" method="post">
        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required><br><br>
        
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br><br>
        
        <label for="publisher">Publisher:</label>
        <input type="text" id="publisher" name="publisher" required><br><br>
        
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" required><br><br>
        
        <label for="curses">Courses:</label>
        <input type="text" id="curses" name="curses"><br><br>
        
        <label for="genre">Genre:</label>
        <input type="text" id="genre" name="genre" required><br><br>
        
        <input type="submit" value="Register Book">
    </form>
</body>
</html>
