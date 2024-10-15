<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="styles.css">
    <script src="validation.js"></script>
</head>
<body>
    <h2>User Registration Form</h2>
    <form action="UserServlet" method="post" onsubmit="return validateForm()">
        <label>First Name:</label><input type="text" name="first_name" id="first_name"><br>
        <label>Last Name:</label><input type="text" name="last_name" id="last_name"><br>
        <label>Phone Number:</label><input type="text" name="phone_number" id="phone_number"><br>
        <label>Email ID:</label><input type="email" name="email_id" id="email_id"><br>
        <label>Address:</label><textarea name="address" id="address"></textarea><br>
        <input type="submit" value="Submit">
    </form>
    <a href="viewUsers.jsp">View All Users</a>
</body>
</html>
