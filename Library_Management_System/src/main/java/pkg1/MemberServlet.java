package pkg1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import pkg1.BookDAO;
import pkg2.Member;


public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 BookDAO dao = new BookDAO();
	        List<Member> membersList = dao.getAllMembers();
	        request.setAttribute("membersList", membersList);
	        request.getRequestDispatcher("members.jsp").forward(request, response);
	        String fullName = request.getParameter("fullName");
	        String email = request.getParameter("email");
	        String phoneNumber = request.getParameter("phoneNumber");
	        String gender = request.getParameter("gender");

	        BookDAO arun = new BookDAO();
	        boolean success = arun.addMember(fullName, email, phoneNumber, gender);
	        
	        if (success) {
	            request.setAttribute("message", "Member added successfully.");
	        } else {
	            request.setAttribute("message", "Failed to add member.");
	        }

	        doGet(request, response);
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
