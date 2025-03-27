<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="pkg2.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Members</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Welcome to the Members Site</h1>
        
        <h2 class="mb-4">List of Members</h2>

        <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
            <div class="alert alert-info" role="alert">
                <%= message %>
            </div>
        <% 
            }
        %>
        
        <div class="row">
            <% 
                List<Member> membersList = (List<Member>) request.getAttribute("membersList");
                if (membersList != null && !membersList.isEmpty()) {
                    for (Member member : membersList) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title"><%= member.getFullName() %></h5>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><strong>ID:</strong> <%= member.getId() %></p>
                        <p class="card-text"><strong>Email:</strong> <%= member.getEmail() %></p>
                        <p class="card-text"><strong>Phone Number:</strong> <%= member.getPhoneNumber() %></p>
                        <p class="card-text"><strong>Gender:</strong> <%= member.getGender() %></p>
                    </div>
                </div>
            </div>
            <% 
                    }
                } else {
            %>
                <div class="col-12">
                    <div class="alert alert-warning" role="alert">
                        No members found.
                    </div>
                </div>
            <% 
                }
            %>
        </div>
        
        <h2 class="mb-4">Add a New Member</h2>
        <form action="MemberServlet" method="post">
            <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <select class="form-control" id="gender" name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Add Member</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
