<%@ page import="java.sql.*" %>
<%@ page import="com.example.DBConnection" %>
<%
    String phoneNumber = request.getParameter("phone_number"); // Get phone number from request
    Connection conn = DBConnection.getConnection();
    
    // SQL query to delete user by phone number
    String query = "DELETE FROM users WHERE phone_number=?";
    PreparedStatement pstmt = conn.prepareStatement(query);
    pstmt.setString(1, phoneNumber); // Set phone number in query
    
    pstmt.executeUpdate(); // Execute the query
    conn.close(); // Close the connection
    
    response.sendRedirect("viewUsers.jsp"); // Redirect to viewUsers page
%>
