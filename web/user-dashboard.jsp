<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Real Estate Management</title>
    <link rel="stylesheet" href="style.css">
  

</head>
<body>
    <%@ include file="header.jsp" %>

    <main>
        <section class="intro">
            <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
            <p>Your role: <%= session.getAttribute("user_role") %></p>
        </section>
        
        <h3>Dashboard Actions</h3>
        <section class="dashboard-actions">
            <div class="action-card">
                <h4>View Properties</h4>
                <p>Explore available properties.</p>
                <a href="properties.jsp">Go to Properties</a>
            </div>
            <div class="action-card">
                <h4>Book an Appointment</h4>
                <p>Schedule a visit with our agents.</p>
                <a href="appointments.jsp">Book Now</a>
            </div>
            <div class="action-card">
                <h4>My Profile</h4>
                <p>Manage your personal information.</p>
                <a href="profile.jsp">View Profile</a>
            </div>
            <div class="action-card">
                <h4>Logout</h4>
                <p>Sign out of your account.</p>
                <a href="logout.jsp">Logout</a>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Real Estate Management. All rights reserved.</p>
    </footer>
</body>
</html>
