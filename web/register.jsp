<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Real Estate Management</title>
    <link rel="stylesheet" href="auth.css">
    <script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm_password").value;
            
            if (password !== confirmPassword) {
                document.getElementById("passwordError").innerText = "Passwords do not match.";
                return false;
            } else {
                document.getElementById("passwordError").innerText = "";
                return true;
            }
        }
    </script>
</head>
<body>
<header>
        <div class="logo">
            <h1>Real Estate Management</h1>
        </div>
    </header>
    <div class="auth-container">
        <div class="form-container">
            <h2>Register</h2>
            <form action="RegisterServlet" method="post" onsubmit="return validatePassword()">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input type="password" id="confirm_password" name="confirm_password" required>
                    <span id="passwordError" style="color: red;"></span>
                </div>
                <div class="form-group">
                    <label for="phone_number">Phone Number</label>
                    <input type="text" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="user_role">Role</label>
                    <select id="user_role" name="user_role" required>
                        <option value="buyer" selected>Buyer</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
                <button type="submit">Register</button>
                <p>Already have an account? <a href="login.html">Login here</a></p>
            </form>
        </div>
    </div>
</body>
</html>
