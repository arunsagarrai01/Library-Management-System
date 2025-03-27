package pkg1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private BookDAO bookDAO;

	    public BookServlet() {
	        this.bookDAO = new BookDAO();
	    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "add":
                    addBook(request, response);
                    break;
             
            }
        }
    }

    private void addBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        boolean available = Boolean.parseBoolean(request.getParameter("available"));

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setAvailable(available);

        bookDAO.addBook(book);
        response.sendRedirect("books.jsp");
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
