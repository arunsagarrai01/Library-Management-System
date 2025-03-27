package pkg1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LibrarianRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("txtLogin");
	        String password = request.getParameter("txtPassword");

	        // Authenticate user
	        BookDAO loginManager = new BookDAO();
	        boolean isAuthenticated = loginManager.authenticate(username, password);

	        if (isAuthenticated) {
	            // Create a session and redirect to dashboard
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);
	            response.sendRedirect("LibrarianDashBoard.jsp");
	        } else {
	            // Set error message and forward back to login page
	            request.setAttribute("errorMessage", "Invalid username or password");
	            request.getRequestDispatcher("LibrarianLoginForm.jsp").forward(request, response);
	        }
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
