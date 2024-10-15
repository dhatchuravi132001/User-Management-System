<%@ page import="java.sql.*" %>
<%@ page import="com.example.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Users</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>All Registered Users</h2>
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone Number</th>
            <th>Email ID</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <%
            Connection conn = DBConnection.getConnection();
            String query = "SELECT * FROM users";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
        %>
        <tr>

            <td><%= rs.getString("first_name") %></td>
            <td><%= rs.getString("last_name") %></td>
            <td><%= rs.getString("phone_number") %></td>
            <td><%= rs.getString("email_id") %></td>
            <td><%= rs.getString("address") %></td>
            <td>
                <a href="deleteUser.jsp?phone_number=<%=rs.getString("phone_number")%>">Delete</a>
            </td>
        </tr>
        <%
            }
            conn.close();
        %>
    </table>
</body>
</html>
