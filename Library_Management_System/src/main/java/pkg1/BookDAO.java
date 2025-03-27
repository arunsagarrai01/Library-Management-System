package pkg1;

import pkg1.Book;
import pkg1.MyDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import pkg2.Member;

public class BookDAO {

    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        try (Connection conn = new MyDB().connect();
             Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM books")) {
            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setTitle(resultSet.getString("title"));
                book.setAuthor(resultSet.getString("author"));
                book.setAvailable(resultSet.getBoolean("available"));
                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public void addBook(Book book) {
        try (Connection conn = new MyDB().connect();
             PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO books (title, author, available) VALUES (?, ?, ?)")) {

            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setBoolean(3, book.isAvailable());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteBook(int id) {
        try (Connection conn = new MyDB().connect();
             PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM books WHERE id = ?")) {

            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean authenticate(String username, String password) {
        boolean isAuthenticated = false;

        try (Connection conn = new MyDB().connect();
             PreparedStatement statement = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")) {

            statement.setString(1, username);
            statement.setString(2, password); 

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    isAuthenticated = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isAuthenticated;
    }
    
    public List<Member> getAllMembers() {
        List<Member> members = new ArrayList<>();
        try (Connection conn = new MyDB().connect()) {
            String query = "SELECT id, fullName, email, phoneNumber, gender FROM members";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Member member = new Member(
                    rs.getInt("id"),
                    rs.getString("fullName"),
                    rs.getString("email"),
                    rs.getString("phoneNumber"),
                    rs.getString("gender")
                );
                members.add(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return members;
    }

    public boolean addMember(String fullName, String email, String phoneNumber, String gender) {
        boolean success = false;
        try (Connection conn = new MyDB().connect()) {
            String query = "INSERT INTO members (fullName, email, phoneNumber, gender) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, phoneNumber);
            ps.setString(4, gender);
            int rowsAffected = ps.executeUpdate();
            success = rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

   
}
