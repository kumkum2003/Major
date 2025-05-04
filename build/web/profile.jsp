<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    HttpSession userSession = request.getSession(false);
    if (userSession == null || userSession.getAttribute("username") == null) {
        response.sendRedirect("login.html");
        return;
    }
    
    String username = (String) userSession.getAttribute("username");
    String email = "";
    String phone = "";
    String role = "";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate", "root", "Root");
        
        String sql = "SELECT email, phone, role FROM users WHERE username=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            email = rs.getString("email");
            phone = rs.getString("phone");
            role = rs.getString("role");
        }
        
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
       <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="profile.css">
    <%@ include file="header.jsp" %>
</head>
<body>
    <main>
        <h2>User Profile</h2>
        <nav>
            <button onclick="showSection('viewProfile')">View Profile</button>
            <button onclick="showSection('editProfile')">Edit Profile</button>
            <button onclick="showSection('myAppointments')">My Appointments</button>
            <button onclick="showSection('myBookings')">My Bookings</button>
            <button onclick="showSection('deleteAccount')">Delete Account</button>
        </nav>

        <section id="viewProfile" class="section">
            <h3>Your Details</h3>
            <p><strong>Username:</strong> <%= username %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <p><strong>Phone:</strong> <%= phone %></p>
            <p><strong>Role:</strong> <%= role %></p>
        </section>

        <section id="editProfile" class="section">
            <h3>Edit Profile</h3>
            <form action="ProfileServlet" method="post">
                <input type="hidden" name="action" value="updateProfile">
                <label>Email: <input type="email" name="email" value="<%= email %>" required></label>
                <label>Phone: <input type="text" name="phone" value="<%= phone %>" required></label>
                <button type="submit">Update</button>
            </form>
        </section>

        <section id="myAppointments" class="section">
            <h3>My Appointments</h3>
            <ul>
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate", "root", "Root");
                    PreparedStatement stmt = conn.prepareStatement("SELECT appointment_date, plot FROM appointments WHERE email=?");
                    stmt.setString(1, email);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) { %>
                        <li><strong>Date:</strong> <%= rs.getDate("appointment_date") %> | <strong>Plot:</strong> <%= rs.getString("plot") %></li>
                    <% }
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </ul>
        </section>

        <section id="myBookings" class="section">
            <h3>My Bookings</h3>
            <ul>
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate", "root", "Root");
                    PreparedStatement stmt = conn.prepareStatement("SELECT plot, amount, payment_method FROM token_money WHERE email=?");
                    stmt.setString(1, email);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) { %>
                        <li><strong>Plot:</strong> <%= rs.getString("plot") %> | <strong>Amount:</strong> <%= rs.getBigDecimal("amount") %> | <strong>Payment:</strong> <%= rs.getString("payment_method") %></li>
                    <% }
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </ul>
        </section>

        <section id="deleteAccount" class="section">
            <h3>Delete Account</h3>
            <p>Warning: This action is irreversible.</p>
            <form action="ProfileServlet" method="post">
                <input type="hidden" name="action" value="deleteAccount">
                <button type="submit" style="background: #dc3545;">Delete My Account</button>
            </form>
        </section>
    </main>

    <script>
        function showSection(sectionId) {
            document.querySelectorAll('.section').forEach(section => {
                section.style.display = 'none';
            });
            document.getElementById(sectionId).style.display = 'block';
        }
        showSection('viewProfile'); // Show default section
    </script>
</body>
</html>
