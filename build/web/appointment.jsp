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
    <title>Book an Appointment</title>
    <link rel="stylesheet" href="appointment.css">
</head>
<body>
    <header>
     <%@ include file="header.jsp" %>
    </header>

    <main>
        <section class="appointment-section">
            <h2>Book an Appointment</h2>

            <form action="AppointmentServlet" method="POST" class="appointment-form">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required placeholder="Enter your full name">
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required placeholder="Enter your email address">
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" required placeholder="Enter your phone number">
                </div>

                <div class="form-group">
                    <label for="plot">Select Plot</label>
                    <select id="plot" name="plot" required>
                        <option value="Blue Meadows, Block B">Blue Meadows, Block B</option>
                        <option value="Blue Sapphire, Block F">Blue Sapphire, Block F</option>
                        <option value="Dutt Township, Block J">Dutt Township, Block J</option>
                        <option value="Elixir Plane, Block 5">Elixir Plane, Block 5</option>
                        <option value="Freckles Estate, Block G">Freckles Estate, Block G</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="appointment_date">Preferred Appointment Date</label>
                    <input type="date" id="appointment_date" name="appointment_date" required>
                </div>

                <div class="form-group">
                    <label for="message">Additional Message</label>
                    <textarea id="message" name="message" rows="4" placeholder="Enter any additional details or requests"></textarea>
                </div>

                <button type="submit" class="submit-btn">Submit Appointment Request</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Real Estate Management. All rights reserved.</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
