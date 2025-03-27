<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="pkg1.Book" %>
<%@ page import="pkg1.BookDAO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Books</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Manage Books</h1>
        <nav>
            <ul>
                <li><a href="Index.jsp">Home</a></li>
                <li><a href="members.jsp">Members</a></li>
                <li><a href="transactions.jsp">Transactions</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Books</h2>
        <a href="addBook.jsp" class="btn">Add Book</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Available</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    BookDAO bookDAO = new BookDAO();
                    List<Book> books = bookDAO.getAllBooks();
                    for (Book book : books) {
                %>
                <tr>
                    <td><%= book.getId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.isAvailable() ? "Yes" : "No" %></td>
                    <td>
                        <a href="editBook.jsp?id=<%= book.getId() %>" class="btn">Edit</a>
                        <a href="BookServlet?action=delete&id=<%= book.getId() %>" class="btn">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </main>
</body>
</html>
