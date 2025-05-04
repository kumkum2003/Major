<!DOCTYPE html>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession userSession = request.getSession(false);
    if (userSession == null || userSession.getAttribute("username") == null) {
        response.sendRedirect("login.html");
        return;
    }
%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Estate Management</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Header Section -->
    <%@ include file="header.jsp" %>
          

    <!-- Main Content Section -->
    <main>
        <section class="intro">
            <h2>Welcome to Real Estate Management</h2>
            <p>Your one-stop solution for buying plots and managing appointments online.</p>
        </section>
	<h3>Featured Plots</h3>
        <section class="featured-plots">
            
            <div class="plot-card">
                <img src="design1.jpg" alt="Green Valley Plot">
                <h4>Green Valley, Block A</h4>
                <p>Price: 6500,000</p>
                <a href="plot-details.jsp">View Details</a>
            </div>
            <div class="plot-card">
                <img src="design2.jpg" alt="Blue Meadows Plot">
                <h4>Blue Meadows, Block B</h4>
                <p>Price: 5450,000</p>
                <a href="plot2-details.jsp">View Details</a>
            </div>
             <div class="plot-card">
                <img src="design3.jpg" alt="Blue Meadows Plot">
                <h4>Blue Sapphire, Block F</h4>
                <p>Price: 7650,000</p>
                <a href="plot3-details.jsp">View Details</a>
            </div>
             <div class="plot-card">
                <img src="design4.jpg" alt="Blue Meadows Plot">
                <h4>Dutt Township, Block J</h4>
                <p>Price: 9800,000</p>
                <a href="plot4-details.jsp">View Details</a>
            </div>
             <div class="plot-card">
                <img src="design5.jpg" alt="Blue Meadows Plot">
                <h4>Elixir Plane, Block 5</h4>
                <p>Price: 4550,000</p>
                <a href="plot5-details.jsp">View Details</a>
            </div>
             <div class="plot-card">
                <img src="design6.jpg" alt="Blue Meadows Plot">
                <h4>Freckles Estate, Block G</h4>
                <p>Price: 8700,000</p>
                <a href="plot6-details.jsp">View Details</a>
            </div>
        </section>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Real Estate Management. All rights reserved.</p>
    </footer>


</body>
</html>
