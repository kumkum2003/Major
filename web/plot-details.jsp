<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plot Details - Real Estate Management</title>
    <link rel="stylesheet" href="plot-details.css">
</head>
<body>
    <!-- Header Section -->
    <header>
       
       <%@ include file="header.jsp" %>
    </header>

    <!-- Plot Details Section -->
    <main>
        <section class="plot-detail">
            <h2>Plot Details</h2>

            <!-- Plot Information -->
            <div class="plot-info">
                <div class="plot-image">
                    <img src="design1.jpg" alt="Green Valley Plot">
                </div>

                <div class="plot-details">
                    <h3>Green Valley, Block A</h3>
                    <p><strong>Location:</strong> Sector 7, New Town</p>
                    <p><strong>Area:</strong> 1000 sq. ft.</p>
                    <p><strong>Price:</strong> ₹500,000</p>
                    <p><strong>Property Type:</strong> Residential</p>
                    <p><strong>Available Financing:</strong> Yes, through XYZ Bank</p>
                    <p><strong>Legal Status:</strong> Clear Title</p>
                    <p><strong>Description:</strong> This beautiful plot is located in a prime area with easy access to all amenities. It’s perfect for both residential and commercial use.</p>

                    <!-- Nearby Amenities -->
                    <h4>Nearby Amenities:</h4>
                    <ul>
                        <li>School: Green Valley High School (2 km)</li>
                        <li>Hospital: New Town Medical Center (3 km)</li>
                        <li>Shopping Mall: Green Mall (5 km)</li>
                    </ul>

                    <!-- Plot Features -->
                    <h4>Plot Features:</h4>
                    <ul>
                        <li>Near main road access</li>
                        <li>Well-developed infrastructure</li>
                        <li>Water and electricity supply available</li>
                    </ul>

                    
                    <!-- Appointment Booking Button -->
                    <a href="appointment.jsp" class="book-btn">Book an Appointment</a>
                </div>
            </div>

            <!-- Plot Location on Map -->
            <section class="map-section">
                <h4>Plot Location:</h4>
                <iframe src="https://maps.google.com/maps?q=Sector%207%2C%20New%20Town&t=&z=13&ie=UTF8&iwloc=&output=embed" width="600" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </section>
        </section>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Real Estate Management. All rights reserved.</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
