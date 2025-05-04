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
    <title>Token Money - Real Estate Management</title>
    <link rel="stylesheet" href="token-money.css">
</head>
<body>
    <header>
        <%@ include file="header.jsp" %>
    </header>

    <main>
        <section class="token-money-section">
            <h2>Generate Token Money</h2>

            <p>To book a plot, a token money deposit is required. Please fill out the form below to generate your token money.</p>

            <form action="TokenMoneyServlet" method="POST" class="token-money-form">
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
                    <label for="amount">Token Money Amount (in Rs.)</label>
                    <input type="number" id="amount" name="amount" required placeholder="Enter token money amount">
                </div>

                <div class="form-group">
                    <label for="payment_method">Payment Method</label>
                    <select id="payment_method" name="payment_method" required>
                        <option value="Bank Transfer">Bank Transfer</option>
                        <option value="Online Payment">Online Payment</option>
                    </select>
                </div>

                <button type="submit" class="submit-btn">Generate Token Money</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Real Estate Management. All rights reserved.</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
